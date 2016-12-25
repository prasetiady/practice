#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
po = 0.0 # positive
ne = 0.0 # negative
ze = 0.0 # zero
arr.each do |num|
  if num > 0
    po += 1
  elsif num < 0
    ne += 1
  else
    ze += 1
  end
end

puts "%.6f" % (po / n)
puts "%.6f" % (ne / n)
puts "%.6f" % (ze / n)
