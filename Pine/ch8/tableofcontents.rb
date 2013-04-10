title = 'Table of Contents'
chapters = [['Getting Started', 1],
            ['Numbers', 9],
            ['Letters', 13]]
puts title.center(50)
puts 
chapters.each_with_index do |chap, idx|
  name, page = chap     #chap returns two strings, name and page.  name, page before equals sign
  chap_num = idx + 1    #defines the them by the respective strings of each returned array.
  
  beginning = "Chapter #{chap_num}: #{name}"
  ending = "page #{page}"
  puts beginning.ljust(30) + ending.rjust(20)
end