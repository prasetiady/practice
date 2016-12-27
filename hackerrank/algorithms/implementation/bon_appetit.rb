N, K = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)
b = gets.to_i

sum = c.reduce(:+)
sum = sum - c[K]

if (sum/2) == b
  puts "Bon Appetit"
else
  puts b - (sum/2)
end
