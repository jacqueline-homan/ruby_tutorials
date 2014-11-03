 # I/O Basics: puts and prints are outputs
 # gets is an input; it waits for user input--a single line ending in a return
 # chomp removes extraneous \n character at line ending
 # chop removes any final character, no matter what it is.
 # require_relative 'input_output.rb'

input = gets.chomp

print "You just said: " 
puts input + "."

result = ""
until result == "quit"
  print "> "
  result = gets.chomp
  puts "I heard: #{result}"
end
puts "Goodbye!"