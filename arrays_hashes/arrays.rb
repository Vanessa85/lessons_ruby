names = Array.new
names[0] = "Ana"
names[1] = "Maria"
puts names

#********
names = %w{ Ana Maria Isabel }
puts names

#*********
names = Array.new(2, "Ana")
puts "#{names}"

#*********
nums = Array.[](1, 2, 3, 4)
puts "#{nums}"
nums = Array[1, 2, 3, 4]
puts "#{nums}"

#*********
digits = Array(2..9)
puts "#{digits}"
num = digits.at(2)
puts num

#*********
numbers = []
numbers.push 1
numbers.unshift 5
numbers << 2
numbers.pop
numbers.shift
puts "#{numbers}"

#*********
numbers = [4, 1, 51, 0, 78]
puts "Total: #{numbers.length}"
puts "#{numbers.sort}"
puts "#{numbers.sort.first}"
puts "#{numbers.sort.last}"
puts numbers.reduce(:+)
puts [1, 2, 3].reduce(:*)
