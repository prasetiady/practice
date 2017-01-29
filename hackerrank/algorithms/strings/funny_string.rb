def funny_string?(s)
  rs = s.reverse
  for i in (1..s.size-1) do
    return false if (s[i].ord - s[i-1].ord).abs != (rs[i].ord - rs[i-1].ord).abs
  end
  true
end

T = gets.to_i
T.times do
  s = gets.strip
  if funny_string?(s)
    puts "Funny"
  else
    puts "Not Funny"
  end
end
