def caesar_cipher(c, k)
  new_c = c
  ascii = c.ord
  if ascii >= 65 && ascii <= 90
    new_ascii = ((ascii + k - 66) % 26 ) + 66
    new_ascii = 65 + new_ascii - 91 if new_ascii > 90
    new_c = new_ascii.chr
  elsif ascii >= 97 && ascii <= 122
    new_ascii = ((ascii + k - 98) % 26 ) + 98
    new_ascii = 97 + new_ascii - 123 if new_ascii > 122
    new_c = new_ascii.chr
  end
  new_c
end

def encript(s, k)
  new_s = ""
  s.each_char do |c|
    new_c = caesar_cipher(c, k)
    new_s += new_c
  end
  new_s
end

N = gets.to_i
S = gets.strip
K = gets.to_i

puts encript(S, K)
