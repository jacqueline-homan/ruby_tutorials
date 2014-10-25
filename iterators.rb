#Control structures provide the action in Ruby
 
 if 3 >= 20 && 3 <= 00
 	puts "TRUE: 3 is less than 100"
 else
 	puts "Nope, 3 is not greater than 20"
 end

x = 0
loop do
	x += 2
	break if x >= 10
	puts x
end


x = 0
while x < 10
	x += 2
	puts x
end

y = 3244
puts y /= 2 until y <= 1


name = "Ed"
if name == "Ed"
	puts "Found Ed!"
else
	puts "No Ed, found Waldo!"
end


y = 47
if (y < 10)
	puts "Below 10"
elsif (y > 20)
	puts "Above 20"
else
	puts "10-20"
end


3.times do
  puts "Hello"
end

1.upto(3) {puts "Wait!"}

3.downto(1) {puts "Hold!"}

(1..3).each {puts "YAY"} 

1.upto(5) do |i|
	puts "P~" + i.to_s
end

fruits = ['banana', 'apple', 'pear']
fruits.each do |fruit|
	puts fruit.capitalize
end

# This code block works the same way the do block above does.
for fruit in fruits
	puts fruit.upcase
end

array = [1,2,3,4,5]
array.each {|num| puts num * 20}

