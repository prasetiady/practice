def is_plus?(n,m,map,i,i2,s)
  top = i - s
  return false if top < 0
  bottom = i + s
  return false if bottom > n-1
  left = i2 - s
  return false if left < 0
  right = i2 + s
  return false if right > m-1
  if map[top][i2] == "G" &&
     map[bottom][i2] == "G" &&
     map[i][left] == "G" &&
     map[i][right] == "G"
    return true
  end
  false
end

def area(s)
  (s * 4) + 1
end

def create_new_map(n,m,map,i,i2,s)
  new_map = []
  map.each do |row|
    new_map << row.clone
  end
  new_map[i][i2] = "."
  for ns in (1..s)
    new_map[i - ns][i2] = "."
    new_map[i + ns][i2] = "."
    new_map[i][i2 - ns] = "."
    new_map[i][i2 + ns] = "."
  end
  new_map
end

def find_plus(n,m,map,last = false)
  max = 0
  a = []
  for i in (1..n-2)
    for i2 in (1..m-2)
      next if map[i][i2] != "G"
      s = 0
      while is_plus?(n,m,map,i,i2,s+1)
        s += 1
      end
      max = area(s) if area(s) > max
      if last
        a << [i,i2,s] if s > 0
      else
        for v_s in (1..s)
          a << [i,i2,v_s]
        end
      end
    end
  end
  if a.size > 0 && (not last)
    ar = []
    a.each do |plus|
      i,i2,s = plus
      new_map = create_new_map(n,m,map,i,i2,s)
      r = find_plus(n,m,new_map,true)
      r = 1 if r < 1
      ar << area(s) * r
    end
    max = ar.max
  end
  max
end

def print_map(map)
  map.each do |line|
    puts line
  end
end

N,M = gets.strip.split.map(&:to_i)
map = []
N.times do
  map << gets.strip
end

puts find_plus(N,M,map)
