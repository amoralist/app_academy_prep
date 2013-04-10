def shuffle(arr)
  output = []
  return arr if arr.length <= 1 #special case
  
  while arr.length > 1
    index = rand(arr.length + 1)
    if arr[index] != nil
      output.push(arr[index])
      arr.pop(index)
      shuffle arr
    end
  end
  output + arr
end
    
  
  
  

puts "Puts what words shall I shuffle for you?"
input = gets.chomp.split(" ")
puts shuffle(input)