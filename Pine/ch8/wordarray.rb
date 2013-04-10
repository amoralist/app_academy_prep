puts "Please enter the words you wish to add to the"
puts "array on separate lines ending with an empty line."
reply = gets.chomp
out = []
while reply != ""
  out << reply
  if reply == ""
  end
  reply = gets.chomp
end
out.sort
out = out.join(" ")
puts "#{out}"