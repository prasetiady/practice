# a = gets.strip
# b = gets.strip

a = "aabbccdd"
b = "abcdddde"

map_a = Hash.new(0)
map_b = Hash.new(0)

a.each_char { |chr| map_a[chr] += 1 }
b.each_char { |chr| map_b[chr] += 1 }

puts "*" * 30
p map_a
p map_b
puts "*" * 30

counter = 0

map_a.clone.each do |key,value|
  if map_b.has_key? key
    if map_b[key] > value
      counter += map_b[key] - value
      map_b[key] = value
    elsif map_b[key] < value
      counter += value - map_b[key]
      map_a[key] = map_b[key]
    end
  else
    counter += value
    map_a.delete(key)
  end
end

map_b.each do |key,value|
  unless map_a.has_key? key
    counter += value
  end
end

p map_a
p map_b
p counter
