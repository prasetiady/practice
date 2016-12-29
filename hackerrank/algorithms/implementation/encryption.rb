T = gets.to_i
T.times do
  s = gets.strip
  slr = s.length ** (1/2.0)
  ceil = slr.ceil
  ls = ""
  ceil.times do |i|
    l = ""
    ceil.times do |i2|
      is = i2 * ceil + i
      l += s[is] if not s[is].nil?
    end
    ls += l + " "
  end
  puts ls.strip
end
