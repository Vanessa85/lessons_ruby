#object.method(), { } o do...end
2.times { puts "hello world" }
%w{ Ana Maribel }.each{ |name| puts name }

#*********
 def test
   puts "You are in the method"
   yield 5, 6
   puts "You are again back to the method"
   yield 100
 end
 test { |i, y| puts "You are in the block #{i}, #{y}" }
