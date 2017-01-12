def great_xor(x)
  b = x.to_s(2).reverse
  i = 0
  c = 0
  b.each_char do |chr|
    if chr == "0"
      c += 2 ** i
    end
    i += 1
  end
  c
end

T = gets.to_i
T.times do
  x = gets.to_i
  puts great_xor(x)
end
