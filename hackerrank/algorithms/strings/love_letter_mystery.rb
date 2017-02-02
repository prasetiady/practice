def solve(s)
  c = 0
  m = s.size/2
  m.times do |i|
    a = s[i]
    b = s[s.size-1-i]
    if a > b 
      c += a.ord - b.ord
    elsif b > a
      c += b.ord - a.ord
    end
  end
  c
end

T = gets.to_i
T.times do
  s = gets.strip
  puts solve(s)
end