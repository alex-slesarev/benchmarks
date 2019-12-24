require 'yajl'
require 'socket'

def notify(msg)
  begin
    Socket.tcp('localhost', 9001) { |s|
      s.puts msg
    }
  rescue
    # standalone usage
  end
end

pid = Process.pid
notify("Ruby YAJL\t#{pid}")

jobj = Yajl::Parser.new.parse(File.read('1.json'))
coordinates = jobj['coordinates']
len = coordinates.length
x = y = z = 0

coordinates.each do |coord|
  x += coord['x']
  y += coord['y']
  z += coord['z']
end

p x / len
p y / len
p z / len

notify("stop")
