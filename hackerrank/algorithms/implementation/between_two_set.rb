def gcd(arr)
  n = arr[0]
  for i in (1..arr.size-1)
    n = n.gcd(arr[i])
    if n == 1 then return 1 end
  end
  n
end

def lcm(arr)
  n = arr[0]
  for i in (1..arr.size-1)
    n = n.lcm(arr[i])
    if n > 100 then return nil end
  end
  n
end

def between_two_set(a,b)
  lcm_a = lcm(a)
  if lcm_a.nil? then return 0 end
  gcd_b = gcd(b)
  if lcm_a > gcd_b then return 0 end
  c = 0
  for i in (lcm_a .. gcd_b)
    if gcd_b%i == 0 && i%lcm_a == 0
      c += 1
    end
  end
  c
end

n,m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)
puts between_two_set(a,b)
