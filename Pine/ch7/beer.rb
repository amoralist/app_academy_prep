puts 'How many bottles of beer do we have?'
number = gets.chomp.to_i

while number.to_i > 0
  puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer!'
  number = number - 1
  puts 'Take one down, pass it around, ' + number.to_s + ' bottles of beer on the wall!'
end
