def find_pair(a,i,d)
  i2 = i + 1
  loop do
    if a[i2].nil? || a[i2] - a[i] > d then
      return nil
    elsif a[i2] - a[i] == d
      return i2
    else
      i2 += 1
    end
  end
end

def have_triplets?(a,i,d)
  i2 = find_pair(a,i,d)
  if i2.nil? then return false end
  i3 = find_pair(a,i2,d)
  if i3.nil? then return false end
  true
end

n, d = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
c = 0
for i in (0..a.size-3)
  if have_triplets?(a,i,d)
    c += 1
  end
end
puts c
