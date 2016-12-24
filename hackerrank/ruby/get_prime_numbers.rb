def get_prime_numbers(n)
  if n < 2
    return []
  end
  numbers = (2..n).to_a
  p = numbers.first
  done = false
  until done
    numbers.delete_if { |number| (number != p) && (number % p == 0) }
    i = numbers.index(p)
    p = numbers[i+1]
    if p.nil?
      done = true
    end
  end
  numbers
end

p get_prime_numbers(1)
p get_prime_numbers(2)
p get_prime_numbers(10000)
