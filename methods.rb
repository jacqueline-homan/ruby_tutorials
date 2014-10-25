def welcome
  puts "My friends call me J, but it's Jacqueline to you"
end

def add
  puts 1 + 1
end

def longest_word
  words = ['apple', 'pear', 'bananna', 'supercalifragilisticexpialodocious']
  longest_word = words.inject do |memo, word|
  	memo.length > word.length ? memo : word
  end
  puts longest_word
end

def over_five?
  value = 3
  puts value > 5 ? 'Over 5' : 'Not over 5'
end

# Now, let's call our methods so we can run this
# from the terminal by running the command "ruby methods.rb"
# Remember: you have to define your methods before calling them!
welcome
add
longest_word
over_five?