require "json"
require "socket"

len = 0
x = y = z = 0

def notify(msg)
  begin
    TCPSocket.open("localhost", 9001) { |s|
      s.puts msg
    }
  rescue
    # standalone usage
  end
end

pid = Process.pid
notify("Crystal Pull\t#{pid}")

File.open("1.json") do |file|
  pull = JSON::PullParser.new(file)
  pull.on_key!("coordinates") do
    pull.read_array do
      len += 1
      pull.read_object do |key|
        case key
        when "x" then x += pull.read_float
        when "y" then y += pull.read_float
        when "z" then z += pull.read_float
        else          pull.skip
        end
      end
    end
  end
end

p x / len
p y / len
p z / len

notify("stop")
