# Classes define what an object is and what it can do.
class Animal

  def set_noise(noise) # This is a "Setter" method
  	@noise = noise
  end

  def make_noise # This is a "Getter" method
  	@noise 
  end
end

animal1 = Animal.new
animal1.set_noise("Moo")
puts animal1.make_noise

animal2 = Animal.new
animal2.set_noise("Oink")
puts animal2.make_noise

# Setter and Getter methods work well in pairs, enabling
# us to set and retrieve values stored in instance variables.
# Getters and Setters give us access control over 
# these instance variables
