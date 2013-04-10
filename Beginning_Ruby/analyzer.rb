# analyzer.rb -- Text Analyzer


    #ARGV gets an array of parameters added to command-line launch of
    #program and supplies them during processing.
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join


total_characters = text.length
total_characters_nospace = text.gsub(/\s+/, '').length
word_count = text.split.length
sentence_count = text.split(/\. | \? | !/).length
paragraph_count = text.split(/\n\n/).length

          #advanced functions
    #remove common articles, particles, pronouns, etc... and count keywords
stopwords = %w{the a by on for of are with just but and to the my I has some in}
words = text.scan(/\w+/)
keywords = words.select{|word| !stopwords.include?(word)}

    #Summarize by finding 'interesting' sentences
sentences = text.gsub(/\s+/,' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, 1 + one_third)
ideal_sentences = ideal_sentences.select{|sentence| sentence =~ /is|are/}

  #output
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospace} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{((keywords.length.to_f / words.length.to_f) * 100).to_i} percent keywords"

puts 
puts "The following sentences have been identified as potentially important:"
puts "#{ideal_sentences.join(". ")}"
puts "-- End of Analysis"