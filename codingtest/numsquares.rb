def num_squares(num)
  test = []
  output = []
  1.upto(num){|x| test << x}
  test.each{|x|
   output << x if (x*x) < num
    }
  output.length
end

puts "what?"
num = gets.chomp.to_i
puts num_squares(num)