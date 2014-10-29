class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  @@species = ['mammal', 'reptile', 'bird', 'insect']
  @@current_animals = []

  def self.all_species
  	@@species
  end

  def self.create_with_attributes(noise, color, legs)
  	animal = self.new(noise, color, legs)
  	# same as animal = Animal.new(noise, color)
  	animal.color = color
  	return animal
  end

  def initialize(noise, legs, arms)
    @legs = legs
    @arms = arms
    @noise = noise
    @@current_animals << self
    puts "A new animal has been instantiated"
  end

  def set_noise(noise)
    @noise = noise
  end

  def make_noise 
  	@noise 
  end

  def color
  	"Color: #{@color}."
  end
end

puts Animal.all_species.inspect

# Now, uncomment the line of code in line 43, and run.
# This line of code will throw an error because we need
# class reader/writer (getter/setter) methods
# in order for this to work

#puts Animal.current_animals.inspect


animal1 = Animal.new("Moo", 4, 0)
animal1.name = "Cow"
animal1.color = "Brown and white spotted"
puts animal1.color
puts animal1.name
puts animal1.legs
puts animal1.arms
#animal1.set_noise 
puts animal1.make_noise

animal2 = Animal.create_with_attributes("You have the right to remain silent.", 2, 2)
animal2.name = "Pig"
animal2.color = "White"
puts animal2.color
puts animal2.name
puts animal2.legs
puts animal2.arms
#animal2.set_noise
puts animal2.make_noise

#puts Animal.current_animals.inspect