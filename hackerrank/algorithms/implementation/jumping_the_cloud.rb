N, K = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)
e = 100

def move(i,k,n)
  (i + k)%n
end

i = 0
loop do
  i = move(i,K,N)
  e -= (c[i] == 0 ? 1 : 3)
  break if i == 0
end
puts e
