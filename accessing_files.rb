# Two ways to open files for read/write access:

# 1. Go into irb and instantiate file object 
# and name it file1.txt (or any name you want)
# then we'll write to it and give it instructions
    file = File.new('file1.txt', 'w')    
    puts file.class
    file.puts "Learning coding\n"
    file.print "in Ruby\n"
    file.write "is\n"
    file << "fun!"
    file.close

    File.open('file1.txt','r') do |file|
      while line = file.gets
      	puts "** " + line.chomp.reverse + " **"
      end
    end
    
# 2. Provide a file with a code block of instructions:
     File.open('file1.txt', 'r') do |file|
     	# read data from file
     end

# NOTE: the second argument is the 'mode': r, w, a, r+, w+, a+

# Now, after running the command ruby accessing_files.rb 
# in the terminal, you won't see anything returned to the
# terminal screen. BUT...go check out the file
# "file1.txt" 

    File.open('file1.txt', 'r') do |file|      
      file.each_line {|line| puts line.upcase}
    end

    # A better way of handling the above code block
    # would be to do the following way, because
    # why open a file if you're not writing to
    # a file with read-only perms anyway:
    File.read('file1.txt').each_line do |l|
      $stdout.puts l.upcase 
    end
    # BTW, this is known as refactoring :)