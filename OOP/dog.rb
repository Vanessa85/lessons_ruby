class Dog
  def initialize(name, size)
    # assign instance variables
    @name, @size = name, size
  end

  def talk
    puts "Guau! Guau!"
  end

  def hi
    puts "I'am dog. My name is #{@name}. I'm #{@size} dog."
  end
end

d = Dog.new('Pastor', 'small')
puts d.methods.sort
puts "id: #{d.object_id}"
d.talk if d.respond_to?("talk")
d.run if d.respond_to?("run")
d.hi

d1 = d
puts d1.object_id
d1 = nil

puts d.class.to_s
