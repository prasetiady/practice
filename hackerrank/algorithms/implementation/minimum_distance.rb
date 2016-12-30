def find_min_distance(a,n)
  min = nil
  for i in (0..n-2)
    for i2 in (i+1..n-1)
      if a[i2] == a[i]
        if min.nil? || i2 - i < min
          min = i2 - i
          if min == 1
            return min
          end
        end
        break
      end
    end
  end
  min
end

n = gets.to_i
a = gets.strip.split.map(&:to_i)
puts find_min_distance(a,n) || -1
