def pow(base, exponent)
  result = 1  
  i = 1
  while i <= exponent
    result = result * base
    i += 1
  end
  result                          #implicit return
end
puts "What\'s the base?"
base = gets.chomp.to_i
puts "What\'s the exponent?"
exponent = gets.chomp.to_i
puts "#{base} multiplied by itself #{exponent} times is #{pow(base, exponent)}."