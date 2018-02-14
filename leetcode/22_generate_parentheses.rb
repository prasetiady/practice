def generate_parenthesis(n)
  generate("", n * 2)
end

def generate(s, n)
  if s.size == n
    puts s if is_valid(s, n/2)
  else
    generate(s + "(", n)
    generate(s + ")", n)
  end
end

def is_valid(s, max)
  result = true
  array = []
  count = 0
  
  s.each_char do |c|
    if c == "("
      count += 1
      return false if count > max
      array.push(c)
    else
      if array.empty?
        return false
      else 
        array.pop
      end 
    end
  end
  
  return true
end

N = gets.to_i
generate_parenthesis(N)