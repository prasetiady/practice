n = gets.to_i
m = 2
nm = 6
for i in (2..n)
  m += nm/2
  nm = nm/2 * 3
end
puts m
