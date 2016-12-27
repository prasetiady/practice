s,t = gets.strip.split(' ').map(&:to_i)
a,b = gets.strip.split(' ').map(&:to_i)
m,n = gets.strip.split(' ').map(&:to_i)
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)

def cacl_reach(s,t,o,arr)
  r = 0
  arr.each do |d|
    if (o + d) >= s && (o + d) <= t
      r += 1
    end
  end
  r
end

puts cacl_reach(s,t,a,apple)
puts cacl_reach(s,t,b,orange)
