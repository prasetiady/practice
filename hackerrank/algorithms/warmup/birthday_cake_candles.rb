age = gets.to_i
candles = gets.strip.split.map(&:to_i)
max = candles.max()
candles = candles.select { |c| c == max }
puts candles.count