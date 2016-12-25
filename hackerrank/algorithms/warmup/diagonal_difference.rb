#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

d1 = Array.new(n) # diagonal 1
d2 = Array.new(n) # diagonal 2
for a_i in (0..n-1)
  d1[a_i] = a[a_i][a_i]
  d2[a_i] = a[a_i][n - 1 - a_i]
end

sum_d1 = d1.reduce { |a,b| a + b }
sum_d2 = d2.reduce { |a,b| a + b }
diff = (sum_d1 - sum_d2).abs

puts diff
