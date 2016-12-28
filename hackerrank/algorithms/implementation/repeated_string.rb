s = gets.strip
n = gets.to_i

def a_in_repeated_s(s,n)
  c = 0
  a = 0
  s.each_char { |chr| if chr == "a" then a += 1 end }
  if a == 0 then return 0 end
  d = n / s.size
  c += d * a
  r = n % s.size
  if r > 0
    for i in (0..r-1)
      if s[i] == "a" then c += 1 end
    end
  end
  c
end

puts a_in_repeated_s(s,n)
