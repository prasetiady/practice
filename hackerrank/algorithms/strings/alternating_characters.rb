def deletion_need(s)
  n = 0
  c = s[0]
  for i in (1..s.size-1) do
    nc = s[i]
    if c == nc
      n += 1
    else
      c = nc
    end
  end
  n
end
T = gets.to_i
T.times do
  s = gets.strip
  puts deletion_need(s)
end