text = %q{ Ruby is a great programming language. It is object oriented
   and has many groovy features. Some people don't like it, but that's 
   not our problem! It's easy to learn. It's great. To learn more about Ruby,
   visit the official Ruby Web site today. 
}

=begin 
Define sentences as an array of 
'text' (minus extra whitespace) 
split by end punctuation.
=end
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?\!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}

=begin
Identify one third of the array
and carve out from there for
as long plus on to compensate
for rounding.  
Redefines ideal_sentences as those 
within length range and containing 'is' or 'are'.
=end
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, 1 + one_third)
ideal_sentences = ideal_sentences.select{|sentence| sentence =~ /is|are/}

#output
puts ideal_sentences.join(". ")