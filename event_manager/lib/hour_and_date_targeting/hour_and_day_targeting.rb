require 'csv'

contents = CSV.open "event_attendees.csv", headers: true,
    header_converters: :symbol
#creates an output file, scans contents for registration date/time, splits it into just the hour,
#and puts that hour into an array at its own 24hr index position.  Returns each hours' tally
#an the most popular hour for registration.
hours_array = []
days_array = []
time_target_result = File.new("date_time_targeting_results.txt", "w")


contents.each{ |row|
  registration = row[:regdate]
  split = registration.split(" ")

  date = Date.strptime(split[0], "%m/%d/%y")
  day = date.wday
  
  time = split[1]
  split_time = time.split(":")
  hour = split_time[0]
    
  days_array << day
  hours_array << hour}

hour_counter = Array.new(24){0}
day_counter = Array.new(7){0}

hours_array.each{|hour|
  hour_counter[hour.to_i] = hour_counter[hour.to_i] + 1}

days_array.each{|day|
  day_counter[day.to_i] = day_counter[day.to_i] + 1}

i = 1
hour_counter.each{|sum| 
  time_target_result.puts("#{hour_counter[i-1]} people registered in the #{i-1}'o clock hour.")
  i += 1}
time_target_result.puts("")
time_target_result.puts("The most popular sign-up hour was #{hour_counter.index(hour_counter.max)}'o clock.")
time_target_result.puts("")

n = 1
time_target_result.puts("(Days of the week begin with Sunday = 0.)")
time_target_result.puts("")
day_counter.each{|sum|
  time_target_result.puts("#{day_counter[n-1]} people registered on #{n-1}")
  n +=1 }
time_target_result.puts("")
time_target_result.puts("The most popular day to register was #{day_counter.index(day_counter.max)}.")


