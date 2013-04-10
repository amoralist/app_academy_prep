puts 'What is your first name?'
first = gets.chomp
puts 'What is your middle name?'
middle = gets.chomp
puts 'And what is your last name?'
last = gets.chomp
letters = first.length + middle.length + last.length
puts 'Did you know there are ' + letters.to_s + ' characters'
puts 'in your name, ' + first + '?'