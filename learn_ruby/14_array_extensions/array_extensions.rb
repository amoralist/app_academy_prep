class Array
  
  def sum
    out = 0
    self.each{|x| out += x}
    out
  end

  def square
    self.map{|x| x**2}
  end
  
  def square!
    self.map!{|x| x**2}
  end
  
end