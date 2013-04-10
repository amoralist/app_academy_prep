
  def translate(string)
    string.split.map{|word| translator(word)}.join(" ")
  end

  def translator(string)
    string.split.map{ |word|
	  capitalize = (word == word.capitalize)
	  punctuated = (word[-1] == ("."||","||"?"||"!"))
	  if punctuated
	    punctuation = word.slice!(-1)
	  else
	    punctuation = ""
	  end
	  
	  if word[0] =~ /a|e|i|o|u|A|E|I|O|U/
        return word + "ay"
	  else
		split_at = word =~ /a|e|i|o|u/
		if word[split_at - 1] != "q"
			first = word[split_at, word.length]
			second = word[0, split_at]
			if capitalize
				return "#{first}#{second}ay".capitalize + punctuation
			else
				return "#{first}#{second}ay" + punctuation
			end
		else
			first = word[split_at + 1, word.length]
			second = word [0, split_at + 1]
			if capitalize
				return "#{first}#{second}ay".capitalize + punctuation
			else
				return "#{first}#{second}ay" + punctuation
			end
		end
	   end
	   
	}
  end

 #missing capitalization and puctuation bonuses
 
 