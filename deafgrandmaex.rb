puts 'HELLO SONNY!'
reply = gets.chomp 
while reply != 'BYE'
  randsub = rand(21)      #random number of years to subtract from 1950 (0-20)
  if reply != reply.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else 
    year = 1950.to_i - randsub
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
  reply = gets.chomp
end
while reply == 'BYE'
  puts 'HUH?'
  reply = gets.chomp
  if reply = 'BYE'
    puts 'IN MY GOOD EAR, DARLIN.'
    reply = gets.chomp
    if reply == 'BYE'
      puts 'COME BACK SOON, NOW.'
      break
    end
  end
end



