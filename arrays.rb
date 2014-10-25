x = ["a", "b", "c"]
puts x
puts x.class
puts x.to_s
x << "Ford"
puts x.to_s
x << 27
puts x.to_s

data_set = ["comb", "mirror", "toothpaste", "towels", "toiletpaper"]
puts data_set.class
puts data_set.inspect
puts data_set.join
puts data_set - ["toiletpaper"]
puts data_set.join(",")
puts data_set.delete_at(2)
puts data_set.join(",")
puts data_set.delete(2)
puts data_set.shift
puts data_set.unshift(1)
