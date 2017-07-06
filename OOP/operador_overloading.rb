class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  # Define + to do vector addition
  def +(other)
    Box.new(@width + other.width, @height + other.height)
  end

  # Define unary minus to negate width and height
  def -@
    Box.new(-@width, -@height)
  end

  def *(scalar)
    Box.new(@width * scalar, @height * scalar)
  end

  def get_width
    @width
  end

  def set_width=(value)
    @width = value
  end
end

box = Box.new(40, 10)
box2 = Box.new(5, 10)
box3 = box.*(5)
puts box3.get_width
box4 = box.-@
puts box4.get_width

#********
box4.freeze
puts "Box object is frozen object" if box4.frozen?
box4.set_width = 41
