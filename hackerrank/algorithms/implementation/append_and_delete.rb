def max_equal_subset(a1,a2)
  max = 0
  a2.size.times do |i|
    if a2[i] == a1[i]
      max += 1
    else
      break
    end
  end
  max
end

s = gets.strip
t = gets.strip
k = gets.to_i

a_s = s.each_char.to_a
a_t = t.each_char.to_a

max_equal = max_equal_subset(a_s,a_t)
del = a_s.size - max_equal
add = a_t.size - max_equal
min_step = del + add
can = false
if k == min_step
  can = true
elsif k > min_step
  if (k - min_step).even?
    can = true
  elsif k > (a_s.size + a_t.size)
    can = true
  end
end
puts can ? "Yes" : "No"
