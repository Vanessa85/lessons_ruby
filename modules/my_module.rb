module MyModule
  #avoid colisions variables
  PI = 3.141592654

  def MyModule.greeting
    puts "Hi!, How are you?"
  end

  def self.goodbye
    puts "Bye! see you later."
  end

  class Person
    def talk
      puts "Bla bla bla..."
    end
  end

  class Cat
    def talk
      puts "Miau miau..."
    end
  end
end
