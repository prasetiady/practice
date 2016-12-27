t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  h = 1
  for i in (1..n)
    if i.odd?
      h *= 2
    else
      h += 1
    end
  end
  puts h
end
