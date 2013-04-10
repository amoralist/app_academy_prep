def silly_sum(numbers)
  output = 0
  numbers.each{|x| output += x.to_i * numbers.index(x)}
  output
end

puts "What numbers"
numbers = gets.chomp.split(" ")
puts silly_sum(numbers)