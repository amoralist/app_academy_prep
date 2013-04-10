def silly_nums(max)
  less_max = [] 
  1.upto(max - 1){|x| less_max << x}
  output = []
  less_max.each{|x|
    unless (x % 3 == 0) && (x % 5 == 0)
      output << x if (x % 3 == 0) || (x % 5 == 0)
    end
    }
  output.join(" ")
end

puts "What's your max?"
max = gets.chomp.to_i
puts silly_nums(max)
  