# Absolute paths

# Use forward slashes, even on Windows
puts "/home/jacqueline/ruby_tutorials"

# File.join ensures platform independence
puts File.join('', 'home', 'jacqueline', 'ruby_tutorials')

# Relative paths

# _FILE_ is THIS file
puts __FILE__

# expand_path will convert a relative path to an absolute path
# in this case, it returns the full path of the file:
puts File.expand_path(__FILE__)

# Relative paths are easiest when starting with this
# file's directory
puts File.dirname(__FILE__)

# .. moves back one directory
#puts File.join(File.dirname(_FILE_), '..', "Home\ Desktop")
