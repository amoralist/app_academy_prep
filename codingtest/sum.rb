def sum(x)
  set = x.split(', ')
  r = 0
  set.each{|x| r += x.to_i}
  r
end
puts "Please enter your addends as integers seperated by a comma and a space."
addends = gets.chomp
puts "The sum of #{addends} is #{sum(addends)}."