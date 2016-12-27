M,N,R = gets.strip.split.map(&:to_i)

puts "DEBUG: M = #{M}, N = #{N}, R = #{R}"
matrix = []
M.times do
  matrix << gets.strip.split.map(&:to_i)
end

def print_matrix(matrix)
  matrix.each do |row|
    s = ""
    row.each do |n|
      s += "#{n} "
    end
    s += "\n"
    puts s
  end
end

def get_array_index(min,max,c)
  i = 0
  x_min = min[0]
  y_min = min[1]
  x_max = max[0]
  y_max = max[1]
  w = y_max - y_min + 1
  h = x_max - x_min + 1
  x = c[0]
  y = c[1]
  if x == x_min
    i = y - y_min + 1
  elsif x == x_max
    i += w
    i += h - 2
    i += y_max - y + 1
  else
    if y == y_max
      i += w
      i += x - x_min
    else
      i += w * 2
      i += h - 2
      i += x_max - x
    end
  end
  i - 1
end

def get_matrix_index(min,max,i)
  i = i + 1
  x_min = min[0]
  y_min = min[1]
  x_max = max[0]
  y_max = max[1]
  x = x_min
  y = y_min
  w = y_max - y_min + 1
  h = x_max - x_min + 1
  if i < w
    y = y_min + i - 1
  elsif i < (w + h - 1)
    y = y_max
    x = x_min + (i - w)
  elsif i < ((2 * w) + h -2)
    x = x_max
    y = y_max - (i - w - h + 1)
  else
    y = y_min
    x = x_max + ((2 * w) + h - 2 - i)
  end
  [x,y]
end

def border_length(m,n)
  (2 * m) + (2 * n) - 4
end

def rotate_left(arr,k)
  if k > arr.length
    k = k % arr.length
  end
  arr[k..-1].concat(arr[0..k-1])
end

def rotate_matrix(matrix,m,n,r)
  puts "DEBUG: matrix = #{matrix.inspect}"
  puts "DEBUG: m = #{m}, n = #{n}"
  n_m = m
  n_n = n
  begin
    x_min = 0 + (m - n_m)/2
    y_min = x_min
    x_max = m - 1 - (m - n_m)/2
    y_max = n - 1 - (n - n_n)/2
    min = [x_min,y_min]
    max = [x_max,y_max]
    puts "DEBUG: min = #{min.inspect}"
    puts "DEBUG: max = #{max.inspect}"
    b_l = border_length(n_m,n_n)
    puts "DEBUG: b_l = #{b_l.inspect}"
    arr = []
    b_l.times do |i|
      puts "DEBUG: i = #{i.inspect}"
      i_matrix = get_matrix_index(min,max,i)
      puts "DEBUG: i_matrix = #{i_matrix.inspect}"
      v_matrix = matrix[i_matrix[0]][i_matrix[1]]
      puts "DEBUG: v_matrix = #{v_matrix}"
      arr << v_matrix
    end
    puts "DEBUG: matrix = #{matrix.inspect}"
    puts "DEBUG: arr = #{arr.inspect}"
    arr = rotate_left(arr,r)
    arr.size.times do |i|
      puts "DEBUG: i = #{i.inspect}"
      i_matrix = get_matrix_index(min,max,i)
      puts "DEBUG: i_matrix = #{i_matrix.inspect}"
      matrix[i_matrix[0]][i_matrix[1]] = arr[i]
    end
    puts "DEBUG: arr = #{arr.inspect}"
    puts "DEBUG: b_l = #{b_l.inspect}"
    n_m -= 2
    n_n -= 2
    puts "DEBUG: n_m = #{n_m}, n_n = #{n_n}"
  end while n_m >= 2 && n_n >= 2
end

print_matrix(matrix)
rotate_matrix(matrix,M,N,R)
print_matrix(matrix)
