def palindrom?(s)
  m = s.size/2
  l = s[0..m-1]
  r = s[(s.size-1) - m + 1 .. (s.size-1)].reverse
  l == r
end

def solve(s)
  if not palindrom?(s)
    for i in (0..s.size-1)
      ns = (i == 0 ? "" : s[0..i-1]) + s[i+1 .. -1]
      if palindrom?(ns)
        return i
      end
    end
  end
  -1
end

T = gets.to_i
T.times do
  s = gets.strip
  puts solve(s)
end