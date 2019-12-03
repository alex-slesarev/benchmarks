using Sockets

mutable struct Tape
  tape::Array{Int, 1}
  pos::Int

  Tape() = new(zeros(Int, 1), 1)
end

inc(this::Tape) = (this.tape[this.pos] += 1)
dec(this::Tape) = (this.tape[this.pos] -= 1)
get(this::Tape) = this.tape[this.pos]

function advance(this::Tape)
  this.pos += 1
  if this.pos > length(this.tape)
    push!(this.tape, 0)
  end
end

function devance(this::Tape)
  if this.pos > 1
    this.pos -= 1
  end
end

validbfsymbol(x) = in(x, ['>', '<', '+', '-', '.', ',', '[', ']'])

struct Program
  code::String
  bracket_map::Dict{Int, Int}

  function Program(text)
    code = filter(validbfsymbol, text)
    bracket_map = Dict{Int, Int}()
    stack = Int[]
    pc = 1
    for ch in code
      if ch == '['
        push!(stack, pc)
      elseif ch == ']' && length(stack) > 0
        right = pop!(stack)
        bracket_map[pc] = right
        bracket_map[right] = pc
      end
      pc += 1
    end
    return new(code, bracket_map)
  end
end

function run(this::Program)
  code = this.code
  bracket_map = this.bracket_map
  tape = Tape()
  pc = 1
  while pc <= length(code)
    ch = code[pc]
    if ch == '+'
      inc(tape)
    elseif ch == '-'
      dec(tape)
    elseif ch == '>'
      advance(tape)
    elseif ch == '<'
      devance(tape)
    elseif ch == '['
      if get(tape) == 0
        pc = bracket_map[pc]
      end
    elseif ch == ']'
      if get(tape) != 0
        pc = bracket_map[pc]
      end
    elseif ch == '.'
      print(Char(get(tape)))
    end
    pc += 1
  end
end

function main(text)
  run(Program(text))
end

println("JIT warming up")
main(">++[<+++++++++++++>-]<[[>+>+<<-]>[<+>-]++++++++[>++++++++<-]>[-]<<>++++++++++[>++++++++++[>++++++++++[>++++++++++[>++++++++++[>++++++++++[>++++++++++[-]<-]<-]<-]<-]<-]<-]<-]++++++++++")

println("bench")

try
  socket = connect("localhost", 9001)
  write(socket, "Julia")
  close(socket)
catch
  # standalone usage
end

text = open(ARGS[1]) do file
  read(file, String)
end
x = @timed main(text)
println("Elapsed: $(x[2]), Allocated: $(x[3]), GC Time: $(x[4])")

