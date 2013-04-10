class Drawing
  class Line
  end
  
  class Circle
  end
end

class Drawing
  def Drawing.give_me_a_circle
    Circle.new
  end
  
  class Line
  end
  
  class Circle
    def what_am_i
      "This is a circle."
    end
  end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
a = Drawing::Circle.new
puts a.what_am_i

#demonstrates that nested classes must be accessed by parent class
#i.e. Circle could also be nested somewhere else, have to refer to Drawing too.
#  a = Circle.new
#  puts a.what_am_i

#define another pi constant for 'another world'
class OtherPlanet
  Pi = 4.5
  
  def OtherPlanet.circumfrence_of_circle(radius)
    radius * 2 * Pi
  end
end

puts OtherPlanet.circumfrence_of_circle(10)
