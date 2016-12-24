def count_multibyte_char (str)
  multibyte_char = 0
  str.each_char do |chr|
    if chr.bytes.length > 1
      multibyte_char += 1
    end
  end
  multibyte_char
end

p count_multibyte_char("Rp1000")
p count_multibyte_char("¥1000")
