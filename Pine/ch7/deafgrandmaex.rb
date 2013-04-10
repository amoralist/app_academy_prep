puts 'HELLO SONNY!'
reply = gets.chomp 
while true                #infinite loop, only breaks at third 'BYE'
  randsub = rand(21)      #random number of years to subtract from 1950 (0-20)
  if reply == 'BYE'
    puts 'WHAT WAS THAT?'
    reply = gets.chomp
    if reply == 'BYE'
      puts 'IN MY GOOD EAR, DARLIN.'
      reply = gets.chomp
      if reply == 'BYE'
        puts 'COME ON BACK SOON, NOW.'
        break
      end
    end
  end  
  if reply != reply.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else 
    year = 1950.to_i - randsub
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
  reply = gets.chomp
end

  
  