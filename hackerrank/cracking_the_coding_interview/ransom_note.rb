# m,n = gets.strip.split(' ')
# m = m.to_i
# n = n.to_i
# magazine = gets.strip
# magazine = magazine.split(' ')
# ransom = gets.strip
# ransom = ransom.split(' ')

magazine = "o l x imjaw bee khmla v o v o imjaw l khmla imjaw x".split(' ')
ransom = "imjaw l khmla x imjaw o l l o khmla v bee o o imjaw imjaw o".split(' ')

magazine_map = Hash.new(0)
magazine.each { |word| magazine_map[word] += 1 }

ransom_map = Hash.new(0)
ransom.each { |word| ransom_map[word] += 1 }

can_create = true

ransom_map.each do |key,value|
  if magazine_map.has_key? key
    if value > magazine_map[key]
      can_create = false
      break
    end
  else
    can_create = false
    break
  end
end

puts can_create
