def sum_terms(n)
  (1..n).reduce(0) do |a,b|
    a += (b ** 2) + 1
  end
end

puts sum_terms(1)
