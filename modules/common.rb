module Common
  def eat
    puts "I'm eating"
  end

  def talk
    @talking = true # variable of instance
    puts "I'm talking: #{language}"
  end

  def is_talking?
    @talking || false
  end

end
