def pangram?(s)
  alphabet = ('a'..'z').to_a.join
  if S.size >= alphabet.size
    S.each_char do |char|
      alphabet.delete! char.downcase
      if alphabet.empty?
        return true
      end
    end
  end
  false
end

S = gets.strip
if pangram? S
  puts "pangram"
else
  puts "not pangram"
end
