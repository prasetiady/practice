#!/bin/ruby

time = gets.strip
period = time[8,2]
hour = time[0,2]
if period == "AM"
  if hour == "12"
    time = "00:" + time[3..7]
  else
    time = time[0..7]
  end
else
  if hour == "12"
    time = time[0..7]
  else
    hour = "%0.2d:" % (hour.to_i + 12)
    time =  hour + time[3..7]
  end
end

puts time
