import JSON
using Sockets

function main()
  text = open("1.json") do file
    read(file, String)
  end
  jobj = JSON.parse(text)
  coordinates = jobj["coordinates"]
  len = length(coordinates)
  x = y = z = 0

  for coord in coordinates
    x += coord["x"]
    y += coord["y"]
    z += coord["z"]
  end

  println(x / len)
  println(y / len)
  println(z / len)
end

function test()
  x = @timed main()
  println("Elapsed: $(x[2]), Allocated: $(x[3]), GC Time: $(x[4])")
end

for i in 1:4
  test()
end

function notify(msg)
  try
    socket = connect("localhost", 9001)
    write(socket, msg)
    close(socket)
  catch
    # standalone usage
  end
end

notify("Julia\t$(getpid())")

test()

notify("stop")
