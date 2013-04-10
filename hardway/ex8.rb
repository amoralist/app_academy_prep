formatter = "%s %s %s %s"            #a string while undefined by terminal %

puts formatter % [1, 2, 3, 4]       #a string of integers
puts formatter % ["one", "two", "three", "four"]     #string of strings
puts formatter % [true, false, false, true]           #string of truthvalues
puts formatter % [formatter, formatter, formatter, formatter] #string of strings
puts formatter % [
  "I had this thing.",                  #string of strings
  "That you could type up right.",
  "But it didn't sing.",
  "So I said goodnight."
]