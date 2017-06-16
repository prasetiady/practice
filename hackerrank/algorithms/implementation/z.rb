def encrypt(string, step)
  i = 0
  s = string.slice!(0)
  while string.size > 0 do
    i += step
    i %= string.size
    i = string.size if i == 0 
    i -= 1
    s += string.slice!(i)    
  end
  puts s
end

string, step = gets.strip.split
encrypt(string, step.to_i)