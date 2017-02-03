def step_to_anagram(s)
  return -1 if s.size.odd?
  m = s.size / 2
  l = s[0..m-1]
  r = s[m..-1]
  hl = Hash.new(0)
  l.each_char { |chr| hl[chr] += 1 }
  hr = Hash.new(0)
  r.each_char { |chr| hr[chr] += 1 }
  n = 0
  hr.each do |key,value|
    if hl[key] == 0
      n += value
    elsif hl[key] < value
      n += value - hl[key]
    end  
  end
  n
end

T = gets.to_i
T.times do
  s = gets.strip
  puts step_to_anagram(s)
end