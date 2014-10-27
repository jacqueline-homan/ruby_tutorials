# Hopping into irb, we see that typing 1 + 1 gives a
# return value of 2.
# But running the command "puts" and then 1 + 1
# gives us the evaluation of 1 + 1, which is 2,
# and also gives a return value of nil.
# This is because puts has a return value of nil.
 

def welcome(nick_name = 'J', name = 'Jacqueline')
  #puts "Hello, my friends call me #{nick_name}, but I prefer #{name}."
  return "Hello #{name}"
end
# What happens at the end of the method is that the 
# return value for the whole method is whatever 
# the last thing was, which in this case, is the
# return value for the puts statement.

# You can only return one object from a method.
def add_and_subtract(n1 = 2, n2 = 5)
  add = n1 + n2
  sub = n1 - n2
  return [add, sub]
end

def longest_word(words = [])  
  longest_word = words.inject do |memo, word| # "memo" and "word" are block variables
  	memo.length > word.length ? memo : word
  end
  return longest_word
end

def over_five?(value)
  return "Exactly 5" if value.to_i == 5
  if value.to_i > 5
  	return "Over 5"
  else
  	return "Under 5"
  end
end


welcome("J", "Jacqueline")
returned_value = welcome("Girlfriend")
puts returned_value

#result = add_and_subtract(2,5)
#puts result [7]
#puts result [-3]
add, sub = add_and_subtract(2, 5)
puts [add, sub]
 
words = ['apple', 'pear', 'bananna', 'supercalifragilisticexpialodocious']
puts longest_word(words)
puts longest_word(words).length
puts over_five?(3)