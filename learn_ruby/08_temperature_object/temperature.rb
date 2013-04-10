class Temperature
  
  def initialize(option = {})
    @option = option
    @fahrenheit = option[:f]
    @celsius = option[:c]
  end
  
  def in_fahrenheit
    if @option.has_key?(:c)
      ((@celsius.to_f * 9.0) / 5.0) + 32.0
    else
      @fahrenheit
    end
  end

  def in_celsius
    if @option.has_key?(:f)  
      ((@fahrenheit.to_f - 32.0) * 5.0) / 9.0
    else
      @celsius
    end
  end
  
  def self.from_celsius(val)
    new(:c => val.to_f)
  end
  
  def self.from_fahrenheit(val)
    new(:f => val.to_f)
  end

  def ftoc(val)
    ((val.to_f - 32.0) * 5.0) / 9.0
  end
  
  def ctof(val)
    ((val.to_f * 9.0) / 5.0) + 32.0
  end
    

  
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp.to_f)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp.to_f)
  end
end