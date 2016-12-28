d1, m1, y1 = gets.strip.split.map(&:to_i)
d2, m2, y2 = gets.strip.split.map(&:to_i)

fine = 0
if y1 > y2
  fine = (y1 - y2) * 10000
elsif y1 == y2
  if m1 > m2
    fine = (m1 - m2) * 500
  elsif m1 == m2
    if d1 > d2
      fine = (d1 - d2) * 15
    end  
  end
end
puts fine
