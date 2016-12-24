q = gets.to_i
queue = []
(1..q).each do
  c = gets.strip
  if c.include? "1"
    input = c.split(" ")
    queue.push(input[1])
  elsif c == "2"
    queue.shift
  else
    puts queue.first
  end
end
