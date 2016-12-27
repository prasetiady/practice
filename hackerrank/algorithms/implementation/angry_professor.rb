t = gets.strip.to_i

def is_canceled(n,k,a)
  max_l = n - k
  l = 0
  nl = 0
  a.each do |t|
    if t > 0
      l += 1
      if l > max_l
        return true
      end
    else
      nl += 1
      if nl >= k
        return false
      end
    end
  end
  true
end

for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    puts is_canceled(n,k,a) ? "YES" : "NO"
end
