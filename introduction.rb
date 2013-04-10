def introduction(age, gender, *names)
  pronoun = 'she'
  pronoun = 'he' if gender == 'male'
  "Meet #{names.join(' ')}, #{pronoun}'s #{age}."
end

puts "Please enter the person to be introduced\'s"
puts "Full name"
names = gets.chomp
puts "Gender"
gender = gets.chomp
puts "and Age."
age = gets.chomp

puts introduction(age, gender, *names)