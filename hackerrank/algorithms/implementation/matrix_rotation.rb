M,N,R = gets.strip.split.map(&:to_i)

puts "DEBUG: M = #{M}, N = #{N}, R = #{R}"
a = []
M.times do
  a << gets.strip.split.map(&:to_i)
end

def print_a(a)
  a.each do |row|
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

# min = [1,1]
# max = [4,4]
# puts "-" * 40
# puts get_array_index(min,max,[1,1])
# puts get_array_index(min,max,[1,2])
# puts get_array_index(min,max,[1,3])
# puts get_array_index(min,max,[1,4])
# puts get_array_index(min,max,[2,4])
# puts get_array_index(min,max,[3,4])
# puts get_array_index(min,max,[4,4])
# puts get_array_index(min,max,[4,3])
# puts get_array_index(min,max,[4,2])
# puts get_array_index(min,max,[4,1])
# puts get_array_index(min,max,[3,1])
# puts get_array_index(min,max,[2,1])
# puts "-" * 40
# puts get_matrix_index(min,max,0).inspect
# puts get_matrix_index(min,max,1).inspect
# puts get_matrix_index(min,max,2).inspect
# puts get_matrix_index(min,max,3).inspect
# puts get_matrix_index(min,max,4).inspect
# puts get_matrix_index(min,max,5).inspect
# puts get_matrix_index(min,max,6).inspect
# puts get_matrix_index(min,max,7).inspect
# puts get_matrix_index(min,max,8).inspect
# puts get_matrix_index(min,max,9).inspect
# puts get_matrix_index(min,max,10).inspect
# puts get_matrix_index(min,max,11).inspect
#
# min = [1,1]
# max = [2,2]
# puts "-" * 40
# puts get_array_index(min,max,[1,1])
# puts get_array_index(min,max,[1,2])
# puts get_array_index(min,max,[2,2])
# puts get_array_index(min,max,[2,1])
# puts "-" * 40
# puts get_matrix_index(min,max,0).inspect
# puts get_matrix_index(min,max,1).inspect
# puts get_matrix_index(min,max,2).inspect
# puts get_matrix_index(min,max,3).inspect
#
# min = [0,0]
# max = [1,6]
# puts "-" * 40
# puts get_matrix_index(min,max,0).inspect
# puts get_matrix_index(min,max,1).inspect
# puts get_matrix_index(min,max,2).inspect
# puts get_matrix_index(min,max,3).inspect
# puts get_matrix_index(min,max,4).inspect
# puts get_matrix_index(min,max,5).inspect
# puts get_matrix_index(min,max,6).inspect
# puts get_matrix_index(min,max,7).inspect
# puts get_matrix_index(min,max,8).inspect
# puts get_matrix_index(min,max,9).inspect
# puts get_matrix_index(min,max,10).inspect
# puts get_matrix_index(min,max,11).inspect
# puts get_matrix_index(min,max,12).inspect
# puts get_matrix_index(min,max,13).inspect
