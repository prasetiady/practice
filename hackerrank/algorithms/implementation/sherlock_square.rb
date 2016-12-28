T = gets.to_i
T.times do
  a,b = gets.strip.split.map(&:to_i)
  i = Math.log2(a).to_i
  if i < 1
    i = 1
  end
  c = 0
  while i ** 2 <= b
    if i ** 2 >= a
      c += 1
    end
    i += 1
  end
  puts c
end
