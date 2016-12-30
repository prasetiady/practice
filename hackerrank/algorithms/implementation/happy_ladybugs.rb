def can_be_happy?(n,b)
  if b.include? "_"
    h = Hash.new(0)
    b.each_char do |chr|
      if chr != "_"
        h[chr] += 1
      end
    end
    h.each do |key,value|
      if value == 1 then return false end
    end
  else
    if n == 1 then return false end
    chr = b[0]
    chr_n = 1
    for i in (1..n-1)
      if i == n-1
        if b[i] != b[i-1] then return false end
      elsif chr == b[i]
        chr_n += 1
      else
        if chr_n == 1
          return false
        else
          chr = b[i]
          chr_n = 1
        end
      end
    end
  end
  true
end

G = gets.to_i
G.times do
  n = gets.to_i
  b = gets.strip
  puts can_be_happy?(n,b) ? "YES" : "NO"
end
