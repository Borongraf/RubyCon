# frozen_string_literal: true

California_stack = []
Texas_stack = []
i = 0
key = 0
ARGV.push(".")

#symbols = /[+\-*\/]/#
while key != 1
  if ARGV[i] =~ /\A-?\d+(\.\d+)?\z/ || ARGV[i] =~ /[a-wy-zA-WY-Z]/    #num
    California_stack.push(ARGV[i])

  elsif ARGV[i] == "+" || ARGV[i] == "-"              #1
    if Texas_stack.empty?
      Texas_stack.push(ARGV[i])
    end
  elsif ARGV[i] == "x" || ARGV[i] == "/" || ARGV[i] == "("
    if Texas_stack.last == "+" || Texas_stack.last == "-" || Texas_stack.empty?
      Texas_stack.push(ARGV[i])
    end
  elsif ARGV[i] == "("
    if Texas_stack.last == "x" || Texas_stack.last == "/" || Texas_stack.last == "("
      Texas_stack.push(ARGV[i])
    end
  elsif ARGV[i] == "+" || ARGV[i] == "-" || ARGV[i] == "x" || ARGV[i] == "/"
    if Texas_stack.last == "("
      Texas_stack.push(ARGV[i])
    end

  elsif ARGV[i] == "+" || ARGV[i] == "-" || ARGV[i] == ")" || ARGV[i] == "."              #2
    if Texas_stack.last == "+" || Texas_stack.last == "-" || Texas_stack.last == "x" || Texas_stack.last == "/"
      California_stack.push(Texas_stack.last)
      Texas_stack.pop
      i-=1
    end
  elsif ARGV[i] == "x" || ARGV[i] == "/"
    if Texas_stack.last == "x" || Texas_stack.last == "/"
      California_stack.push(Texas_stack.last)
      Texas_stack.pop
      i-=1
    end

  elsif Texas_stack.last == "(" && ARGV[i] == ")"     #3
    Texas_stack.pop


  elsif ARGV[i] == ")" && Texas_stack.empty?          #5
  puts "Error"
  elsif Texas_stack.last == "(" && ARGV[i] == "."
  puts "Error"

  else ARGV[i] == "." && Texas_stack.empty?          #4
  key = 1
  end
  i+=1
end

California_stack.each do |item|
  print item + " "
end
