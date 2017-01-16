def is_distinct?(s)
  r = true
  c = s[0]
  for i in (1..s.length-1)
    nc = s[i]
    if nc == c
      r = false
      break
    else
      c = nc
    end
  end
  r
end

def create_distinct(s)
  chrs = s.each_char.to_a.uniq
  if chrs.size == 2
    if is_distinct?(s)
      s.size
    else
      0
    end
  end
  a = []
  chrs.combination(2).each do |combination|
    ns = s.clone
    chrs.each do |chr|
      if not combination.include?(chr)
        ns.tr!(chr,"")
      end
    end
    a << ns
  end
  a.reject! { |cs| not is_distinct?(cs) }
  max = 0
  a.each do |cs|
    if max < cs.size
      max = cs.size
    end
  end
  max
end

n = gets.to_i
s = gets.strip

puts create_distinct(s)
