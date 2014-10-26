# Arguments are a comma-separated list of values that
# are passed into methods
# Values are passed in when they are called.
# Methods with arguments typically use parentheses,
# but parentheses are optional in Ruby. I use them for clarity.



def welcome
  puts "My friends call me J, but it's Jacqueline to you"
end

def add
  puts 1 + 1
end

@words = ['apple', 'pear', 'bananna', 'supercalifragilisticexpialodocious']
def longest_word
  
  longest_word = @words.inject do |memo, word| # "memo" and "word" are block variables
  	memo.length > word.length ? memo : word
  end
  puts longest_word
end

# the variable "value" has scope only in the method "over_five?"
# that means it can only be assigned within there 
# and used inside there, and when the method is over,
# that variable will be discarded and can't be used
# outside of this block
def over_five?
  value = 3 
  puts value > 5 ? 'Over 5' : 'Not over 5'
end

welcome
add
longest_word
over_five?
