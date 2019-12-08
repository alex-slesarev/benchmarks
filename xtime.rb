#!/usr/bin/env ruby
require "mkmf"
require "socket"

def mem(pid)
  parent_rss = `ps p #{pid} -o rss`
  overall = parent_rss.split("\n").last.to_i
  unless RUBY_PLATFORM =~ /darwin/
    children_rss = `ps --ppid #{pid} -o rss`
    children_rss.split("\n").drop(1).each do |mem|
      overall += mem.to_i
    end
  end
  overall
end

has_energy_metrics = find_executable 'rapl-info'

def energy
  0.000001 * `rapl-info -j`.to_i
end

server = TCPServer.new 9001
pid = Process.spawn(*ARGV.to_a)

client = server.accept
test_name = client.gets
puts test_name

t = Process.clock_gettime(Process::CLOCK_MONOTONIC)
mm = 0
if has_energy_metrics
  e = energy
end

Thread.new do
  mm = mem(pid)
  while true
    sleep 0.1
    m = mem(pid)
    mm = m if m > mm
  end
end

Process.waitpid(pid, 0)
stats = "%.2f s, %.1f Mb" % [Process.clock_gettime(Process::CLOCK_MONOTONIC) - t, mm / 1024.0]
if has_energy_metrics
  new_e = energy
  if new_e < e
    # Counter has been reset
    max_e = 0.000001 * `rapl-info -J`.to_i
    diff_e = max_e - e + new_e
  else
    diff_e = new_e - e
  end
  stats += ", %.1f J" % [diff_e]
end
STDERR.puts stats
exit($?.exitstatus || 0)
