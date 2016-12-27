#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def divisible_sum_pairs(a,k)
  c = 0
  for i in (0..a.size - 1)
    for j in (i+1..a.size - 1)
      if (a[i] + a[j])%k == 0
        c += 1
      end
    end
  end
  c
end

puts divisible_sum_pairs(a,k)
