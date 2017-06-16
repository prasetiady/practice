def descending_order(n)
  array = n.to_s.split.sort
  array.reverse.join.to_i
end

N = gets.to_i
N.times do
  n  = gets.to_i
  puts "DEBUG: descending_order(n) = #{descending_order(n)}"
end

