# A hash is an unordered, object-indexed 
# collection of objects (key-value pairs)

person = {:first_name =>"Jacqueline", :last_name => "Homan", :hair => "dark blonde", :eyes => "grey", :occupation => "programmer"}
puts person[:first_name]
puts person[:last_name]
puts person[:occupation]
puts person.key("Jacqueline")
puts person.length
puts person.to_s
puts person.to_a
puts person[:hair].object_id
puts person.has_key?(:email)