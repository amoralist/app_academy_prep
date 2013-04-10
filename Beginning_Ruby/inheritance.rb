	  #inheritance in two directions
	
#def class Person
class Person
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    @fullname = "#{firstname} #{lastname}"
  end
  
  def name
    @fullname
  end
end

#define subclass Doctor with a unique prefix and
#a 'super' lookup to name in Person class
class Doctor < Person
  def name "Dr. " + super
  end
end

