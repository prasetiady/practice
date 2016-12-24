def factorial(num)
  result = num
  if(num > 1)
    result = num * factorial(num-1)
  end
  result
end

n = gets.to_i
puts factorial(n)
