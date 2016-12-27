def calc_highlight(h,word)
  max = 1
  word.each_byte do |b|
    if h[b-97] > max
      max = h[b-97]
    end
  end
  word.size * max
end

h = gets.strip
h = h.split(' ').map(&:to_i)
word = gets.strip

puts calc_highlight(h,word)
