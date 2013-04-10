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

def primes(max)
  result_set = []
  count = 1
  while count <= max
    if is_prime?(count)
      result_set << count.to_s + ", "
    end
    count += 1
  end
  result_set
end

puts "How high would you like your primes to go?"
max = gets.chomp.to_i
puts "#{primes(max)}"
  