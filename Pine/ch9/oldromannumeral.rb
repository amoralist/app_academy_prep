def old_roman_numeral number
  index = number
  output = []
  while index > 0
    if index >= 1000
      output << "M"
      index -= 1000
    elsif index >= 500
      output << "D"
      index -= 500
    elsif index >= 100
      output << "C"
      index -= 100
    elsif index >= 50
      output << "l"
      index -= 50
    elsif index >= 10
      output << "X"
      index -= 10
    elsif index >= 5
      output << "V"
      index -= 5
    elsif index >= 1
      output << "I"
      index -= 1
    end
  end
  print output
  puts ""
end

puts "What shall I convert to additive Roman numerals?"
input = gets.chomp.to_i
old_roman_numeral input
        
  