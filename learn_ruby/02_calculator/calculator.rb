def add( x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(addends)
  output = 0
  addends.each{|x| output += x}
  output
end

def multiply(multiplicants)
  output = 1
  multiplicants.each{|x| output *= x}
  output
end

def power(x, y)
  x**y
end

def factorial(num)
  index = num
  output = 1
  while index > 1
    output *= index
    index -= 1
  end
  output
end

  