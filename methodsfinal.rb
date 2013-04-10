def add(*addends)
  output = 0
  output += addends.pop.to_i while addends.length != 0
  puts output
end

def subtract(*subtrahends)
  output = subtrahends[0].to_i
  output -= subtrahends.shift.to_i while subtrahends.length != 0
  puts output
end
  
def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end

puts "What numbers shall I add or subtract? (separate with a comma and a space)"
numbers = gets.chomp.split(", ")
operation = gets.pop.to_s
calculate(*numbers, operation)
  
  
  