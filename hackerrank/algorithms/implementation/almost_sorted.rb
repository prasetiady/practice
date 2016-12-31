def sort(d)
  can = true
  is_used = false
  is_bigger = false
  is_reverse = false
  x = 0
  y = 0
  for i in (0..d.size-2)
    if is_bigger
      if i == d.size-2
        is_used = true
        y = i + 1
        can = true
        if d[y] > d[x+1]
          can = false
          break
        end
        if x > 0
          if d[x-1] > d[y]
            can = false
            break
          end
        end
      elsif (not d[i+2].nil?) && d[x] < d[i+2]
        is_bigger = false
        is_used = true
        y = i + 1
        can = true
        if x > 0
          if d[x-1] > d[y]
            can = false
            break
          end
        end
      else
        if not is_reverse
          if d[i] > d[i+1]
            is_reverse = true
          end
        else
          if d[i] < d[i+1]
            break
          end
        end
      end
    else
      if d[i] > d[i+1]
        if is_used
          can = false
          break
        else
          if i == d.size-2
            is_used = true
            x = i
            y = i+1
            if x > 0
              if d[x-1] > d[y]
                can = false
              end
            end
            break
          else
            if d[i] < d[i+2]
              is_used = true
              x = i
              y = i+1
              if x > 0
                if d[x-1] > d[y]
                  can = false
                  break
                end
              end
            else
              is_bigger = true
              can = false
              x = i
            end
          end
        end
      end
    end
  end
  if can
    puts "yes"
    if is_used
      puts (is_reverse ? "reverse" : "swap") + " #{x+1} #{y+1}"
    end
  else
    puts "no"
  end
end

N = gets.to_i
d = gets.strip.split.map(&:to_i)
sort(d)
