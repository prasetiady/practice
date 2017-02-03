def make_anagram(l,r)
  a = l
  b = r
  if a.size > b.size
    a = r
    b = l
  end
  ha = Hash.new(0)
  a.each_char { |chr| ha[chr] += 1}
  hb = Hash.new(0)
  b.each_char { |chr| hb[chr] += 1}
  c = b.size - a.size
  ha.each do |key,value|
    if hb[key] < value
      c += (value - hb[key]) * 2
    end
  end
  c 
end

l = gets.strip
r = gets.strip
puts make_anagram(l,r)
