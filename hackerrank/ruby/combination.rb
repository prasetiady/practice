def factorial(n)
  if n == 0
    return 1
  end
  (1..n).reduce() { |a,b| a * b }
end

combination = -> (n) do
  -> (r) do
    fN = factorial(n)
    fR = factorial(r)
    fNMinR = factorial(n - r)
    fN / (fR * fNMinR)
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
