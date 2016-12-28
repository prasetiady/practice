N = gets.to_i
a = gets.strip.split.map(&:to_i)

def cut_stick(a)
  min = a.min
  a.map { |e| e - min }.reject { |e| e == 0 }
end

loop do
  puts a.size
  a = cut_stick(a)
  break if a.empty?
end
