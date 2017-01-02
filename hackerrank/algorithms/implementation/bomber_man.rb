def print_map(map)
  map.each do |line|
    puts line
  end
end

def detonate_bom(r,c,map)
  new_map = Array.new(r){ "O"*c }
  for i in (0..r-1)
    for i2 in (0..c-1)
      top = (i == 0) ? nil : map[i-1][i2]
      bottom = (i == r-1) ? nil : map[i+1][i2]
      left = (i2 == 0) ? nil : map[i][i2-1]
      right = (i2 == c-1) ? nil : map[i][i2+1]
      if map[i][i2] == "O" ||
          top == "O" || bottom == "O" ||
          left == "O" || right == "O"
        new_map[i][i2] = "."
      end
    end
  end
  new_map
end

R,C,N = gets.strip.split.map(&:to_i)
map = []
R.times do
  map << gets.strip
end

if N.even?
  empty_map = Array.new(R){ "O"*C }
  print_map(empty_map)
else
  if N >= 3
    map = detonate_bom(R,C,map)
    if (N - 3)%4 != 0
      map = detonate_bom(R,C,map)
    end
  end
  print_map(map)
end
