def count_highland(n, m)
	count = 0
	n.times do |x|
		n.times do |y|
			if (m[x][y] == "B")
				count += 1
				mark_highland(n, m, x, y)
			end
		end
	end	
	count
end

def mark_highland(n, m, x, y)
	m[x][y] = ""
	mark_highland(n, m, x+1, y)  if (x < n - 1 && m[x+1][y] == "B")
	mark_highland(n, m, x, y+1)  if (y < n - 1 && m[x][y+1] == "B")
	mark_highland(n, m, x-1, y)  if (x > 0 && m[x-1][y] == "B")
	mark_highland(n, m, x, y-1)  if (y > 0 && m[x][y-1] == "B") 
end

N = gets.to_i
m = []
N.times do |i|
	m[i] = gets.strip.chars.to_a
end

puts count_highland(N, m)