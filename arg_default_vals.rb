# Argument default values can help avoid getting a
# wrong number of arguments (0 for 2) (ArgumentError)
# We do that by making an assignment inside the arg list.

# Arguments are a comma-separated list of values that
# are passed into methods
# Values are passed in when they are called.
# Methods with arguments typically use parentheses,
# but parentheses are optional in Ruby. I use them for clarity.

# Note: It's the order of the args in the
# def welcome (arg1, arg2 ) statement passed that matters.
# If the args are switched, the value for nick_name 
# is passed instead of the value for the variable name.


def welcome(nick_name = 'J', name = 'Jacqueline')
  puts "Hello, my friends call me #{nick_name}, but I prefer #{name}."
end

def add(n1, n2)
  puts n1 + n2
end

#@words = ['apple', 'pear', 'bananna', 'supercalifragilisticexpialodocious']
def longest_word(words = [])  
  longest_word = words.inject do |memo, word| # "memo" and "word" are block variables
  	memo.length > word.length ? memo : word
  end
  puts longest_word
end

# the variable "value" has scope only in the method "over_five?"
# that means it can only be assigned within there 
# and used inside there, and when the method is over,
# that variable will be discarded and can't be used
# outside of this block
def over_five?(value)
  puts value.to_i > 5 ? 'Over 5' : 'Not over 5'
end

welcome("J", "Jacqueline")
add(2,5)
words = ['apple', 'pear', 'bananna', 'supercalifragilisticexpialodocious']
longest_word(words)
over_five?(3)