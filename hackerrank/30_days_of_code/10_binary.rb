def int_to_binary(n)
  binary = []
  while n > 0
    binary << n%2
    if n == 1
      n = 0
    else
      n = n/2
    end
  end
  binary.reverse.join
end

def consecutive_1(str)
  arr = str.split("0")
  p arr
  arr.reduce do |a,b|
    if a.length > b.length
      a
    else
      b
    end
  end.length
end

puts "-" * 30
p int_to_binary(61000)
p consecutive_1(int_to_binary(61000))
puts "-" * 30
p int_to_binary(1)
p consecutive_1(int_to_binary(1))
puts "-" * 30
