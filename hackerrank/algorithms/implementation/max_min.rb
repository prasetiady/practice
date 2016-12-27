def max_min(a)
  n = a.shift
  min = n
  max = n
  sum = n
  until a.empty?
    n = a.shift
    sum += n
    if n > max
      max = n
    elsif n < min
      min = n
    end
  end
  puts "#{sum - max} #{sum - min}"
end

a = gets.strip.split.map(&:to_i)
max_min(a)
