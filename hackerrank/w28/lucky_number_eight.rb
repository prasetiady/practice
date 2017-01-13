def lucky_number_eight(n,a)
  c = 0
  for i in (n-1).downto(0)
    c += 1 if a[i] % 8 == 0
    for i2 in (i-1).downto(0)
      c += 1 if "#{a[i2]}#{a[i]}".to_i % 8 == 0
      for i3 in (i2-1).downto(0)
        if "#{a[i3]}#{a[i2]}#{a[i]}".to_i % 8 == 0
          c += 1
          for i4 in (i3-1).downto(0)
            c += 2 ** i4
          end
        end
      end
    end
  end
  c
end

n = gets.to_i
a = gets.strip.each_char.map(&:to_i)

puts lucky_number_eight(n,a)
