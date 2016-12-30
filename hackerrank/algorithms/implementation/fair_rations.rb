def distribute(n,b)
  s = 0
  p = b[0]
  for i in (1..n-1)
    if p.odd?
      if i == n-1 && b[i].even?
        return nil
      else
        b[i] += 1
        s += 2
      end
    end
    p = b[i]
    if i == n-1 && p.odd?
      return nil
    end
  end
  s
end

N = gets.to_i
b = gets.strip.split.map(&:to_i)
odd = b.select { |n| n.odd? }
puts distribute(N,b) || "NO"
