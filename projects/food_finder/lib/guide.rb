require 'restaurant'

class Guide
  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_exists?
      puts "Found restaurant file."
    elsif
      # or create a new File
      puts "Created restaurant file."
    else
      # exit if create fails
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    #action loop
    # what do you want to do? (list, find, add, quit)
    # do that action
    # repeat until user quits
    conclusion
  end

  def introduction
    puts "\n\n<<< Welcome to the Food Finder >>> \n\n"
    puts "This is an interactive guide to help you find the food you crave. \n\n"
  end

  def conclusion
    puts "\n<<< Good bye and Bon Appetit! >>>\n\n\n"
  end
end
