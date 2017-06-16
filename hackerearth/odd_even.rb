N = gets.to_i
N.times do
  s = gets.strip
  odds = 0
  evens = 0
  s.each_char do |chr|
    if ((chr.to_i).odd?) 
      odds += 1
    else  
      evens += 1
    end
  end
  if (odds.odd? && evens.even?)
    puts  "YES"
  else
    puts "NO"
  end
end