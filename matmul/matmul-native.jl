using Sockets

function matgen(n)
  tmp = 1.0 / n / n
  [ tmp * (i - j) * (i + j - 2) for i=1:n, j=1:n ]
end

function main(n)
  t = time()
  n = round(Int, n / 2 * 2)
  a = matgen(n)
  b = matgen(n)
  c = a * b
  v = round(Int, n/2) + 1
  println(c[v, v])
  println(time() - t)
end

function test()
  n = 100
  if length(ARGS) >= 1
    n = parse(Int, ARGS[1])
  end

  println("JIT warming up")
  main(200)

  println("bench")
  try
    socket = connect("localhost", 9001)
    write(socket, "Julia")
    close(socket)
  catch
    # standalone usage
  end

  x = @timed main(n)
  println("Elapsed: $(x[2]), Allocated: $(x[3]), GC Time: $(x[4])")
end

test()
