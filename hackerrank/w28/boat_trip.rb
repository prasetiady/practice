n,c,m = gets.strip.split.map(&:to_i)
p = gets.strip.split.map(&:to_i)
max = p.max

if max > c * m
  puts "No"
else
  puts "Yes"
end
