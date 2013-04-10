def kaprekar?(k)
  length = k.to_s.length
  sqr = k.to_i**2
  
  digits = sqr.to_s.split(//)
  right_digits = digits.last(length)  
  digits.pop(right_digits.length)
  
  if k.to_i == ( digits.to_s.to_i + right_digits.to_s.to_i )
    return true
  else
    return false
  end

end

puts "What number shall I check?"
k = gets.chomp
puts kaprekar?(k)