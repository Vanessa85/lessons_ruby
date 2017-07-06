# Global  $variable
# Class     @@variable
# Instance  @variable
# Local     variable
# Block     variable

class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  @@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
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

  def self.create_with_attributes(noise, color)
    # animal = Animal.new(noise)
    animal = self.new(noise)
    animal.color = color
    return animal
  end

  def initialize(noise, legs=4, arms=0)
    @noise = noise
    @legs = legs
    @arms = arms
    @@current_animals << self
    puts "A new animal has been instantiated."
  end

  def noise=(noise)
    @noise = noise
  end

  def noise
    @noise
  end

  def color
    "The color is: #{@color}"
  end

end

class Cow < Animal
  # overriding method
  def color
    "The cow's color is: #{@color}"
  end
end

#accesing the superclass
class Pig < Animal
  def noise
    parent_noise = super
    return "Hello and also #{parent_noise}"
  end
end

Animal.species = ["frog", "fish"]
puts Animal.species.inspect
animal1 = Animal.new('Moo!', 4, 0)
animal1.name = "Steve"
puts animal1.name
puts animal1.legs

animal2 = Animal.create_with_attributes("Quack!", "white")
puts animal2.noise
puts animal2.color
puts Animal.current_animals.inspect

cow = Animal.create_with_attributes("Moo!", "yellow")
puts cow.color

pig = Pig.new("Oink!")
puts pig.noise
