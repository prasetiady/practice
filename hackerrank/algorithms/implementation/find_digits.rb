T = gets.to_i
T.times do
  n = gets.to_i
  h = Hash.new(0)
  n.to_s.each_char do |chr|
    h[chr.to_i] += 1
  end
  c = 0
  h.each do |key,value|
    if (key > 0) && (n%key == 0)
      c += value
    end
  end
  puts c
end
