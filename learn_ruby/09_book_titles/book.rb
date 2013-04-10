class Book
  
  attr_reader :title
  
  def title=(input)
    stopwords = ['the', 'a', 'an', 'by', 'on', 'for', 'of', 'are', 'with',
      'just', 'but', 'and', 'to', 'the', 'my', 'I', 'has', 'some', 'in', 'over']
    words = input.split
    words[0].capitalize!
    words.map{|word| stopwords.include?(word) ? word : word.capitalize!}
    @title = words.join(" ")
  end
  
end