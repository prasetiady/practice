n = gets.to_i
c = gets.strip.split.map(&:to_i)

def jump(c,i = 0)
  j = 0
  if i < c.size - 1
    j += 1
    if c[i+1] == 0 && c[i+2] == 0
      j1 = jump(c,i+1)
      j2 = jump(c,i+2)
      j += [j1,j2].min
    elsif c[i+2] == 0
      j += jump(c,i+2)
    else
      j += jump(c,i+1)
    end
  end
  j
end

puts jump(c)
