def bigger_lexical(s,i_bigger,i)
  temp = s[i_bigger]
  s[i_bigger] = s[i]
  s[i] = temp
  s[0..i] + s[i+1..-1].each_char.sort.join
end

def get_bigger_lexical(s)
  max = s[s.size-1]
  (s.size - 2).downto(0) do |i|
    if max > s[i]
      min = max
      i_min = 0
      (i+1..s.size-1).each do |i2|
        if s[i2] <= min && s[i2] > s[i]
          min = s[i2]
          i_min = i2
        end
      end
      return bigger_lexical(s,i_min,i)
    else
      max = s[i]
    end
  end
  return "no answer"
end

T = gets.to_i
T.times do
  s = gets.strip
  puts get_bigger_lexical(s)
end
