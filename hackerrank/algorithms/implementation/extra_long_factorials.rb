class BigInteger
  def initialize(n = 0)
    @mem = n.to_s.each_char.map(&:to_i).reverse
  end

  def multipy(n)
    if n == 0
      @mem = [0]
    elsif n > 1
      r_mem = []
      @mem.size.times do |i|
        r_mem[i] = (r_mem[i].nil? ? 0 : r_mem[i]) + @mem[i] * n
        if r_mem[i] > 9
          r_mem[i+1] = (r_mem[i+1].nil? ? 0 : r_mem[i+1]) + r_mem[i]/10
          r_mem[i] = r_mem[i]%10
        end
      end
      @mem = r_mem
    end
    self
  end

  def to_a
    @mem.reverse
  end

  def to_s
    @mem.reverse.join
  end
end

def big_factorial(n)
  big = BigInteger.new(1)
  (1..n).each do |i|
    big.multipy(i)
  end
  big.to_s
end

n = gets.strip.to_i
puts big_factorial(n)
