#!/bin/ruby

def rotate_right(a,k)
  if k > a.length
    k = k % a.length
  end
  i = a.size - k
  a[i..-1].concat(a[0..i-1])
end

n,k,q = gets.strip.split(' ')
n = n.to_i
k = k.to_i
q = q.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
a = rotate_right(a,k)
for a0 in (0..q-1)
    m = gets.strip.to_i
    puts a[m]
end
