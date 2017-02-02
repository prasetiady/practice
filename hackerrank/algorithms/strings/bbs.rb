N = gets.to_i
s = gets.strip
c = 0
i = 0
while N > i + 2 do
  ss = s[i..i+2]  
  if ss == "010"
    c += 1
    i += 3
  else
    i += 1
  end
end
puts c