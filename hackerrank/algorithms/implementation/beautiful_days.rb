i, j, k = gets.strip.split.map(&:to_i)
bd = 0
for i in (i..j)
  ri = i.to_s.reverse.to_i
  if (i - ri).abs % k == 0
    bd += 1
  end
end
puts bd
