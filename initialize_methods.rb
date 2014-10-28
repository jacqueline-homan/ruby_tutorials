class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  def initialize(noise, legs, arms)
    @legs = legs
    @arms = arms
    @noise = noise
  end

  #def set_noise(noise) 
  #	@noise = noise
  #end

  def make_noise 
  	@noise 
  end

  def color
  	"Color: #{@color}."
  end
end

animal1 = Animal.new("Moo", 4, 0)
#animal1.set_noise
animal1.name = "Cow"
animal1.color = "Brown and white spotted"
#animal1.setup_limbs
puts animal1.color
puts animal1.name
puts animal1.legs
puts animal1.arms
puts animal1.make_noise

animal2 = Animal.new("You have the right to remain silent.", 2, 2)
#animal2.set_noise
animal2.name = "Pig"
animal2.color = "White"
puts animal2.color
puts animal2.name
puts animal2.legs
puts animal2.arms
puts animal2.make_noise