def is_prime?(num)
  i = 2
  while i < num
    is_divisible = ((num % i) == 0)
    if is_divisible
      return false
    end
    i +=1
  end
  true
end

    
   
puts "What number do you wish to test for prime-ness?"
num = gets.chomp.to_i
puts "#{is_prime?(num)}"
