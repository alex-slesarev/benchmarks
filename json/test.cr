require "json"
require "socket"

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
notify("Crystal\t#{pid}")

text = File.read("1.json")
jobj = JSON.parse(text)
coordinates = jobj["coordinates"].as_a
len = coordinates.size
x = y = z = 0

coordinates.each do |coord|
  x += coord["x"].as_f
  y += coord["y"].as_f
  z += coord["z"].as_f
end

p x / len
p y / len
p z / len

notify("stop")
