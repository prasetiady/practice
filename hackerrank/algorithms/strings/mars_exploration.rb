S = gets.strip
a = S.scan(/.{3}/)
a2 = a.select { |s| s != "SOS" }
c = 0
a2.each { |s|
  c += 1 if s[0] != "S"
  c += 1 if s[1] != "O"
  c += 1 if s[2] != "S"
}
puts c
