# https://www.hackerrank.com/challenges/taum-and-bday
T = gets.to_i
T.times do
  b,w = gets.strip.split.map(&:to_i)
  x,y,z = gets.strip.split.map(&:to_i)
  bc = x
  wc = y
  if x > (y + z)
    bc = y + z
  elsif y > (x + z)
    wc = x + z
  end
  c = (b * bc) + (w * wc)
  puts c
end
