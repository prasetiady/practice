def big_sum(a,b)
  s = []
  if a.size < b.size
    s = big_sum(b,a)
  else
    ar = a.reverse
    br = b.reverse
    ar.size.times do |i|
      if br[i].nil?
        s[i] = ar[i]
      else
        if s[i].nil?
          s[i] = 0
        end
        s[i] += ar[i] + br[i]
        if s[i] > 9
          s[i] -= 10
          s[i+1] = 1
        end
      end
    end
    s.reverse!
  end
  s
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map { |str| str.each_char.to_a.map(&:to_i) }
puts arr.reduce { |a,b| big_sum(a,b) }.join
