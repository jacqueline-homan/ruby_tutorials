# Common operators are Ruby methods, too.
# For example, "+" is a method that's applied 
# to the number when performing addition. 
# It is also a string concatenator. It's a method that,
# when called, mushes two string objects together.

# Go into irb, run the command: ruby operators.rb,
# then compare the output to what you see in this code.

puts 5 + 2
puts 5.+ (2)

puts 7 * 6
puts 7. * (6)

puts 3 ** 2
puts 3. ** (2)

# Note: the "=" here is an a variable assignment,
# and NOT a method on an object. A variable is one 
# of the few things in Ruby that is technically
# not an object, although it behaves like one.
array1 = [3,5,7]
puts array1.inspect

array2 = [9,11,13]
puts array2.inspect

array1 << 0
puts array1.inspect

array2. << (0)
puts array2.inspect

array1[2]
puts array1.inspect

array2.[](2)
puts array2.inspect

# Do you know why 'x' is located where it is?
# Answer: Arrays begin with the zeroth position,
# so the array1.[](2) == array1[2] refers to the
# third element in the array which holds the
# second position in the array.
array1[2] = 'x'
puts array1.inspect

array2.[]=(2,'x')
puts array2.inspect
