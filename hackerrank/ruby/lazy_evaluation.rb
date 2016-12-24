require "prime.rb"

n = gets.to_i

def is_palindrom(num)
  s = num.to_s
  s == s.reverse
end

palindromic_primes = Prime.lazy.select { |p| is_palindrom(p) }.first(n)

p palindromic_primes
