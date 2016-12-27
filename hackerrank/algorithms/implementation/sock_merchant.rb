n = gets.strip.to_i
c = gets.strip.split.map(&:to_i)

h = Hash.new(0)
c.each { |i| h[i] += 1 }
sum = 0
h.each { |key,value| sum += value/2 }
puts sum
