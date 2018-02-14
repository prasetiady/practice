# @param {String} s
# @return {Integer}
def num_decodings(s)
  count = 1
  if s.size > 1
    if s.slice(0,2).to_i <= 26
      count += num_decodings(s.slice(2, s.size))
    end
  end
  return count 
end

s = gets

puts num_decodings(s)
