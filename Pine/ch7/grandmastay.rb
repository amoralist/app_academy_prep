puts 'HELLO SONNY!'
reply = gets.chomp 
while reply != 'BYE'
  randsub = rand(21)      #random number of years to subtract from 1950 (0-20)
  if reply != reply.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else 
    year = 1950.to_i - randsub
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  reply = gets.chomp
    while reply == 'BYE'
      puts 'HUH?!  SPEAK UP SONNY'
      reply = gets.chomp
      while reply == 'BYE'
        puts 'HUH?!  SPEAK UP SONNY'
        reply == gets.chomp
        if reply == 'BYE'
          puts 'BYE, SONNY!'
        end
      end
    end  
  end  
end

#problem at first 'BYE' break, doesn't wait for second two 'BYE's to end


