def leap_years(first, last)
  years = []
  first.upto(last){|x| years << x }
  output = []
  years.each{|x|
    if x % 4 == 0 
      unless x % 100 == 0
        output << x
      end
    end
    if x % 400 == 0
      output << x
    end
  }
  output.sort
  printout = output.join(", ")
  puts "The leap years between #{first} and #{last} are #{printout}."
end
    

puts "What years shall I consider?"
first = gets.chomp.to_i
last = gets.chomp.to_i
leap_years(first, last)
