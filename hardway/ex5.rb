name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74.0 # inches
weight = 180.0 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches (%d centimeters) tall." % [height, (height * 2.54)]
puts "He's %d pounds (%d kilos) heavy." % [weight, (weight * 0.45359)]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

#this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
  age, height, weight, age + height + weight]


