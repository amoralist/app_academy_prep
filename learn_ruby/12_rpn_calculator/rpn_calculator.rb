class RPNCalculator
  
  attr_accessor :stack
  def initialize
    @stack = [0]
  end

  def value
    return stack[stack.length - 1]
  end

  def push(value)
    stack.push(value.to_f)
  end

  def pop
    value = stack.pop
    raise "calculator is empty" if value.nil?
    value
  end

  def plus
    stack.push(pop + pop)
  end

  def minus
    minuend = pop
    stack.push(minuend - pop)
  end

  def times
    stack.push(pop * pop)
  end

  def divide
    dividend = pop
    stack.push(dividend / pop)
  end

  def tokens(string)
    string.split.map{|x|
      case x
      when '+', '-', '*', '/'
        x.to_sym
      else
        x.to_f
      end
    }
  end

  def evaluate(string)
    tokens(string).each{|x|
      case x
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push x
      end
    }
    value
  end

end
  