def find_pattern(rg,cg,g,rp,cp,p)
  if rg >= rp && cg >= cp
    for i in (0..rg-rp)
      for i2 in (0..cg-cp)
        if g[i][i2..i2+cp-1] == p[0]
          found = true
          for i3 in (1..rp-1)
            if g[i+i3][i2..i2+cp-1] != p[i3]
              found = false
              break
            end
          end
          if found
            return true
          end
        end
      end
    end
  end
  false
end

T = gets.to_i
T.times do
  rg,cg = gets.strip.split.map(&:to_i)
  g = []
  rg.times do
    g << gets.strip
  end
  rp,cp = gets.strip.split.map(&:to_i)
  p = []
  rp.times do
    p << gets.strip
  end
  puts find_pattern(rg,cg,g,rp,cp,p) ? "YES" : "NO"
end
