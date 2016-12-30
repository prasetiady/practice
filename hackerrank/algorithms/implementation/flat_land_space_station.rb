def max_distance(n,m,c)
  a = c.sort
  df = a.min
  dl = n - a.max - 1
  max = [df,dl].max
  for i in (0..m-2)
    sd = a[i+1] - a[i]
    d = sd/2
    if d > max
      max = d
    end
  end
  max
end

n,m = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)

puts max_distance(n,m,c)
