class Box
  BOX_COMPANY = "My Company S. A." # you cannot its value
  attr_accessor :width, :height

  def initialize(w, h)
    @width, @height = w, h
  end

  def get_area
    @width * @height
  end

end

box = Box.new(40, 5)
puts Box::BOX_COMPANY
puts "Width is: #{box.width}"

#********
box2 = Box.allocate
puts box2.get_area
