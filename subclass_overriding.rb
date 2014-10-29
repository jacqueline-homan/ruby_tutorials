class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  @@species = ['mammal', 'reptile', 'bird', 'insect']
  @@current_animals = []

  def self.species
  	@@species
  end

  def self.species=(array=[])
    @@species = array
  end

  def self.current_animals
    @@current_animals
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

  def noise=(noise)
    @noise = noise
  end

  def noise 
  	@noise 
  end

  def color
  	"Color: #{@color}"
  end
end

  class Cow < Animal
    def color
      "The cow's color is #{@color}"
    end
  end

  class Pig < Animal
  end

  class Bird < Animal
  end

  class Roach < Animal
  end



Animal.species = ['mammal','reptile', 'bird', 'insect']
puts Animal.species.inspect

puts Animal.current_animals.inspect


animal1 = Animal.new("Moo", 4, 0)
animal1.name = "Cow"
animal1.color = "Brown and white spotted"
puts animal1.color
puts animal1.name
puts animal1.legs
puts animal1.arms
puts animal1.noise

animal2 = Animal.create_with_attributes("You have the right to remain silent.", 2, 2)
animal2.name = "Pig"
animal2.color = "White"
puts animal2.color
puts animal2.name
puts animal2.legs
puts animal2.arms
puts animal2.noise

maisie = Cow.create_with_attributes("Mooooooooooo", "Brown",4)
puts maisie.noise

puts animal1.class
puts maisie.class
puts maisie.color