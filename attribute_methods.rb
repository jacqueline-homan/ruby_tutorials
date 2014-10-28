class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  def set_noise(noise) 
  	@noise = noise
  end

  def make_noise 
  	@noise 
  end

  def setup_limbs
  	@legs = 4
  	@arms = 0
  end

  def color
  	"Color: #{@color}."
  end
end

animal1 = Animal.new
animal1.set_noise("Moo")
animal1.name = "Cow"
animal1.color = "Brown and white spotted"
animal1.setup_limbs
puts animal1.color
puts animal1.name
puts animal1.legs
puts animal1.arms
puts animal1.make_noise

animal2 = Animal.new
animal2.set_noise("You have the right to remain silent.")
animal2.name = "Pig"
puts animal2.name
puts animal2.make_noise