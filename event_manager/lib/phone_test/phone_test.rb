require 'csv'
require 'erb'

phonenumbers = {}

def clean_phonenumber(phonenumber)
  phonenumber.gsub!(/([-(). ])/, '')
  if phonenumber.length < 10 || phonenumber.length > 11 
    phonenumber = "invalid number"
  elsif phonenumber.length == 10
    phonenumber = phonenumber.to_s
  elsif phonenumber.length == 11
    if phonenumber[0] == 1
      phonenumber = phonenumber[1..10].to_s
    else
      phonenumber = "invalid number"
    end
  end
end





contents = CSV.open "event_attendees.csv", headers: true,
      header_converters: :symbol
phone_result = File.new("telephone_test_result.txt", "w")
contents.each do |row|
  name = "#{row[:first_name]} #{row[:last_name]}"
  phone = row[:homephone]
  out_phone = clean_phonenumber(row[:homephone])
  phone_result.puts("#{name.ljust(25)} #{out_phone.rjust(25)}")
end