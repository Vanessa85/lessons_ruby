months = Hash.new
months = Hash.new "month" #has with a default value
puts months[0] # return the default value
puts months.default
months = {}
months[1] = 'January'
puts months[1]

hashes = { 'dog' => 'animal', 12 => 'twelve' }
hashes = Hash['dog' => 'animal', 12 => 'twelve']
puts hashes
puts hashes['dog']
puts hashes[12]
puts "#{hashes.keys}"

#********
# Hashes with symbols
options = { :font_size => 10, :font_family => 'Arial' }
options = { font_size: 10, font_family: 'Arial' }
puts options[:font_family]
