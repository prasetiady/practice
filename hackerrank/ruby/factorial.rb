def factorial(n)
  f = (1..n).reduce() { |a,b| a * b }
  yield(f)
end

n = gets.to_i
factorial(n) do |n|
    puts n
end
