def reduced_string(s)
  a = s.each_char.to_a
  na = []
  c = a.shift
  n = 1
  found = false
  until a.empty?
    nc = a.shift
    if c == nc
      n += 1
      found = true
    else
      na << [c,n]
      c = nc
      n = 1
    end
  end
  na << [c,n]
  ns = ""
  na.each do |c,n|
    if n.odd?
      ns += c
    end
  end
  if ns.empty?
    "Empty String"
  elsif found
    reduced_string(ns)
  else
    ns
  end
end

s = gets.strip
puts reduced_string(s)
