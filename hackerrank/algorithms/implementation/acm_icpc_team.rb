N, M = gets.strip.split.map(&:to_i)
p = []
N.times do
  p << gets.strip.to_i(2)
end
max = 0
n = 0
for i in (0..p.size - 2)
  for i2 in (i+1..p.size-1)
    b = p[i] | p[i2]
    c = b.to_s(2).count "1"
    if c > max
      n = 1
      max = c
    elsif c == max
      n += 1
    end
  end
end
puts max
puts n
