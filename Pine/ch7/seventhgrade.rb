puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  #civil response
  puts 'Please take a seat, ' + name + '.'
else
  #angry response
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp
  
  if reply.downcase == 'yes'
    #right answer
    puts 'HMMPH!  Well, sit down!'
  else
    #wrong answer
    puts 'GET OUT!!'
end

        

