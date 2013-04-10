
# best to run in irb for demo



class AllVowels
	include Enumerable
	
	@@vowels = %w{a e i o u}
	def each
		@@vowels.each {|v| yield v}
	end
end


x = AllVowels.new
  #Enumerable methods full list in Appendix B
x.collect{|i| i + "x"}
      #=> ["ax", "ex", "ix", "ox", "ox", "ux"]
x.detect{|i| i > "j"}
      #=> "o"
x.select{|i| i > "j"}
      #=> ["o", "u"]
x.sort
      #=> ["a", "e", "i", "o", "u"]
x.max
      #=> "u"
x.min
      #=> "a"