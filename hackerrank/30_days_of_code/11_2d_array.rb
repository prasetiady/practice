def get_hour_glass(arr,x,y)
  [
    arr[y][x], arr[y][x+1], arr[y][x+2],
    arr[y+1][x+1],
    arr[y+2][x], arr[y+2][x+1], arr[y+2][x+2]
  ]
end

def find_all_hour_glass(arr)
  all_hour_glass = []
  (0..3).each do |y|
    (0..3).each do |x|
      all_hour_glass << get_hour_glass(arr,x,y)
    end
  end
  all_hour_glass
end

def max_hour_glass_sum(arr)
  arr.reduce(nil) do |a,b|
    sum = b.reduce { |a,b| a + b }
    if a.nil?
      sum
    elsif a > sum
      a
    else
      sum
    end
  end
end

arr = [
  [1,  2,  3,  4,  5,  6,],
  [7,  8,  9,  10, 11, 12,],
  [13, 14, 15, 16, 17, 18,],
  [1,  1,  1,  1,  1,  1,],
  [0,  0,  0,  0,  0,  0,],
  [2,  2,  2,  2,  2,  2,]
]


p max_hour_glass_sum(find_all_hour_glass(arr))
