def echo(phrase)
  return "#{phrase}"
end

def shout(phrase)
  return "#{phrase.upcase}"
end

def repeat(phrase, num = 2)
  repeated = "#{phrase} " * num
  repeated.chop
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(phrase)
  arr = phrase.split
  arr[0]
end

def titleize(title)
  stopwords = ['the', 'a', 'by', 'on', 'for', 'of', 'are', 'with',
    'just', 'but', 'and', 'to', 'the', 'my', 'I', 'has', 'some', 'in', 'over']
  title.capitalize
  title.capitalize.gsub(/\w+/) {|word| stopwords.include?(word) ? word : word.capitalize}
end
