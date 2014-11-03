# Absolute paths

# Use forward slashes, even on Windows
puts "/home/jacqueline/ruby_tutorials"

# File.join ensures platform independence
puts File.join('', 'home', 'jacqueline', 'ruby_tutorials')

# Relative paths

# _FILE_ is THIS file
puts _FILE_

# expand_path will convert a relative path to an absolute path
# in this case, it returns the full path of the file:
puts File.expand_path(_FILE_)


