puts 'HELLO SONNY!'
reply = gets.chomp 
while reply != 'BYE'
  if reply != reply.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    reply = gets.chomp
  else
  puts 'NO, NOT SINCE 1938!'
reply = gets.chomp
end
end
