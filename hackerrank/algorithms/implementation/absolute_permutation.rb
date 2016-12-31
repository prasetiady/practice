def absolute_permutation(n,k)
  a = []
  if k == 0
    a = (1..n).to_a
  elsif (k * 2) > n
    return -1
  elsif n%(k*2) != 0
    return -1
  else
    s = 1
    c = k
    for i in (1..n)
      if i > (s * k * 2)
        s += 1
      end
      if i <= (s * k * 2) - k
        c -= 1
        a << (s * k * 2) - c
      else
        c += 1
        a << (s * k * 2) - (2 * k) + c
      end
    end
  end
  a.join(" ")
end

T = gets.to_i
T.times do
  n,k = gets.strip.split.map(&:to_i)
  puts absolute_permutation(n,k)
end
