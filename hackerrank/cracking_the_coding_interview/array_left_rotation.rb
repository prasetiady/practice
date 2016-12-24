# n,k = gets.strip.split(' ')
# n = n.to_i
# k = k.to_i
# a = gets.strip
# a = a.split(' ').map(&:to_i)

def rotate_left(arr,k)
  if k > arr.length
    k = k % arr.length
  end
  arr[k..-1].concat(arr[0..k-1])
end

p rotate_left([1,2,3,4,5,6],2)
p rotate_left([1,2,3,4,5,6],7)
