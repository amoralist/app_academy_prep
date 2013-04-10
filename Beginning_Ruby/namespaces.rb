#define a method different ways in seperate modules

module NumberStuff
  def NumberStuff.random
    rand(1000000)
  end
end

module LetterStuff
  def LetterStuff.random
    (rand(26)+65).chr
  end
end


puts NumberStuff.random
puts LetterStuff.random


#define two homographic classes in seperate modules

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox.Ruler.new
a.length = 50
b = County.Ruler.new
b.name = "Ghengis Khan"
