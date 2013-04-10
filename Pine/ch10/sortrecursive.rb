# The well-known quicksort algorithm.  (taken from solutions...)
def sort arr
  return arr if arr.length <= 1
  
  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}
  sort(less) + [middle] + sort(more)
end

puts "Puts what words shall I sort for you?"
input = gets.chomp.split(" ")
sort(input).each{|x| print x.to_s + " "}
puts 
