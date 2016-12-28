n = gets.to_i
a = gets.strip.split.map(&:to_i)
h = Hash.new(0)
a.each { |e| h[e] += 1 }
c = 0
max = 0
h.each do |key,value|
  if value > max
    c += max
    max = value
  else
    c += value
  end
end
puts c
