def steps_to_equal(a)
  a.sort!
  s = 0
  for i in (0..a.size-2)
    p i
    # a1 = a[i]
    # a2 = a[i]
  end
  s
end

T = gets.to_i
T.times do
  n = gets.to_i
  a = gets.strip.split.map(&:to_i)
  puts steps_to_equal(a)
end
