  #polymorphism

#Define parent class with attr :name

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

#Define subclasses with distinct 'talk' returns by species

class Cat < Animal
  def talk 
    "Meow!"
  end
end

class Dog < Animal
  def talk
    "Woof!"
  end
end

#create an array of cats and dogs with string names and run 'talk' on each

animals = [Cat.new("Flossie"), Dog.new("Clive"), Cat.new("Max")]
animals.each{|animal| puts animal.name + " says " + "\"#{animal.talk}\""}
  