$LOAD_PATH << '.'
require 'my_module'
require 'system'
require 'string'
require 'common'

puts MyModule::PI
puts MyModule.greeting
puts MyModule.goodbye
person = MyModule::Person.new
cat = MyModule::Cat.new
puts person.talk
puts cat.talk

#*********
dolar = System::Current::Dolar.new
puts dolar.cost

#*********
puts "anabel".palindrome?

#*********
class Person
  include Common
  def language
    "Bla bla bla"
  end
end
person = Person.new
puts person.talk
puts person.is_talking?
