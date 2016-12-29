p = gets.to_i
q = gets.to_i

kaprekar = [1, 9, 45, 55, 99, 297, 703, 999, 2223, 2728, 4950, 5050,
  7272, 7777, 9999, 17344, 22222, 77778, 82656, 95121, 99999]

in_range = kaprekar.select { |n| n >= p && n <= q }

if in_range.empty?
  puts "INVALID RANGE"
else
  puts in_range.join(" ")
end
