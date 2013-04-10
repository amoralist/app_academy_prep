def new_roman_numeral number
  index = number
  output = []
  while index > 0
    if index >= 900
      if index >= 1000 
        output << "M"
        index -= 1000
      elsif index >= 900
        output << "CM"
        index -= 900
      end  
    elsif index >= 400
      if index >= 500
        output << "D"
        index -= 500
      else index >= 400
        output << "CD"
        index -= 400
      end
    elsif index >= 90
      if index >= 100
        output << "C"
        index -= 100
      else
        output << "XC"
        index -= 90
      end
    elsif index >= 40
      if index >= 50  
        output << "l"
        index -= 50
      else
        output << "XL"
        output -= 40
      end
    elsif index >= 9
      if index >= 10
        output << "X"
        index -= 10
      else
        output << "IX"
        index -= 9
      end
    elsif index >= 4
      if index >= 5
        output << "V"
        index -= 5
      else
        output << "IV"
        index -= 4
      end
    elsif index >= 1
      output << "I"
      index -= 1
    end
  end
  print output
  puts ""
end

puts "What shall I convert to Roman numerals?"
input = gets.chomp.to_i
new_roman_numeral input
        
  