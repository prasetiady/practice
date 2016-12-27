T = gets.to_i
T.times do |t_i|
  n,m,s = gets.strip.split.map(&:to_i)
  m += s - 1
  if m > n
    m = (m%(n))
  end
  if m == 0
    m = n
  end
  puts m
end
