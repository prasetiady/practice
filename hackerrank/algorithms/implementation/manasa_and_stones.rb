def get_final_step(n,a,b)
  r = []
  if a == b
    r << (n-1)*a
  elsif a < b
    r = get_final_step(n,b,a)
  else
    if n == 1
      r = [b,a]
    else
      for i in (0..n-1)
        r << i*a + (n-i-1)*b
      end
    end
  end
  r
end

T = gets.to_i
T.times do
  n = gets.to_i
  a = gets.to_i
  b = gets.to_i
  puts get_final_step(n,a,b).join(" ")
end
