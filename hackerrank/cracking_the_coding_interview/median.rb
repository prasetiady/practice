def find_median (s_a)
  mid = s_a.size / 2
  median = s_a[mid]
  if s_a.size%2 == 0
    median = (s_a[mid-1] + s_a[mid]) / 2.0
  end
  median
end

def find_position(num, a)
  position = 0
  if !a.empty?
    if a.size == 1
      if num > a[0]
        position = 1
      end
    else
      median = find_median(a)
      mid = (a.size / 2)
      if num == median
        position = mid
      elsif num < median
        position = find_position(num,a[0,mid])
      else
        position = mid + find_position(num,a[mid..-1])
      end
    end
  end
  position
end

n = gets.strip.to_i
a = []
(1..n).each do
  a << gets.to_i
end

s_a = []
a.each do |num|
  position = find_position(num, s_a)
  s_a.insert(position,num)
  puts "%.1f" % find_median(s_a)
end
