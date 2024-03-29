title = 'Table of Contents'
chapters = [['Getting Started', 1],
            ['Numbers', 9],
            ['Letters', 13]]
puts title.center(50)
puts 
chapters.each_with_index do |chap, idx|
  chap_num = idx + 1
  
  beginning = "Chapter #{chap_num}: #{name}"
  ending = "page #{page}"
  puts beginning.ljust(30) + ending.rjust(20)
end