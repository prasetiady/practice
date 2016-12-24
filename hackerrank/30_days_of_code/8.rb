n = gets.to_i
arr = []
(1..n).each { arr << gets.strip }

map = {}
arr.each do |str|
  pair = str.split(" ")
  map[pair[0]] = pair[1]
end

done = false
until done
  input = gets
  if input.nil?
    done = true
  else
    key = input.strip
    if map.include? key
    puts "#{key}=#{map[key]}"
    else
      puts "Not found"
    end
  end
end
