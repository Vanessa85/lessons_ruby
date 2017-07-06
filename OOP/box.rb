class Box
  @@count = 0 # class variable

  def initialize(width, height)
    @width, @height = width, height
    @@count += 1
  end

  # class method
  def self.count
    "Box count is: #@@count"
  end

  def to_s
    "w:#{@width}, h: #{@height}"
  end

  # accessor methods
  def width
    @width
  end

  def get_height
    @height
  end

  # setter methods
  def width=(value)
    @width = value
  end

  def set_height=(value)
    @height = value
  end

  # instance methods
  def get_area
    @width * @height
  end

  # make is protected
  # protected :get_area
  # private :get_area
end

box = Box.new(450, 80)
box.set_height = 90
box.width = 100
puts box.width
puts box.get_height
puts "Area of the box is: #{box.get_area}"
puts Box.count
puts box.to_s
