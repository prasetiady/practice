n = gets.to_i
arr = []

(1..n).each do
  arr << gets.strip
end

arr.each do |str|
  even = []
  odd = []
  (0..str.length).each do |i|
    if i % 2 == 0
      even << str[i]
    else
      odd << str[i]
    end
  end
  puts "#{even.join} #{odd.join}"
end
