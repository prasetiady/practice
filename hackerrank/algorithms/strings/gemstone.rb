N = gets.to_i
es = gets.strip.each_char.to_a.uniq
(N-1).times do
  nes = gets.strip.each_char.to_a
  es.select! { |e| nes.include? e } 
end
puts es.size