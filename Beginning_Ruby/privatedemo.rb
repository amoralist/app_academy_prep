class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @first_name + ' ' + @last_name
  end

private                             
  #Code past here can only be called by in-class code (versus public command).
  #Can also pass private methods symbols with same name as methods you wish
  #to keep private after methods are defined.
  
  #Can protect individual variables with "protected :var" once var is defined.
  
  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end
  
  def set_first_name(name)
    @first_name = name
  end
  
  def set_last_name
    @last_name = name
  end
end