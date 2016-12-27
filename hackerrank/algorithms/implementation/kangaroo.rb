def will_meet?(x1,v1,x2,v2)
  if v1 == v2
    return x1 == x2
  elsif v1 > v2 && x1 > x2
    return false
  elsif v2 > v1 && x2 > x1
    return false
  else
    (x1 - x2) % (v2 - v1) == 0
  end
end

x1,v1,x2,v2 = gets.strip.split(' ').map(&:to_i)
puts will_meet?(x1,v1,x2,v2) ? "YES" : "NO"
