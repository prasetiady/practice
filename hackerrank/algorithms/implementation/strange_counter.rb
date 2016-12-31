def time_value(t)
  if t < 4 then return 4 - t end
  i = 3
  e = 3
  while i < t
    e *= 2
    i += e
  end
  i - t + 1
end

t = gets.to_i
puts time_value(t)
