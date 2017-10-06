def round_grade(grade)
	result = grade
	if grade > 37
		mod5 = grade % 5
		result += (5 - mod5) if mod5 > 2
	end
	result
end

N = gets.to_i
N.times do
	grade = gets.to_i
	puts round_grade(grade)
end