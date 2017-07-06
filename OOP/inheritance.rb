class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  def get_area
    @width * @height
  end

  def print_format_area
    puts "Area is: #{get_area}"
  end
end

class BigBox < Box
  # add a new instance method
  def print_area
    area = get_area
    puts "Big box area is: #{area}"
  end
  # overriding method
  def print_format_area
    puts "Area is..."
  end
end

box = BigBox.new(200, 10)
box.print_area
box.print_format_area
