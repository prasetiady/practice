class DP
    def initialize
        @cache = []
    end

    def get(a)
        p @cache
        return 0 if a == 0
        return 10**9 if a < 0
        return @cache[a] if @cache[a] != nil
        return @cache[a] = [get(a-1), get(a-2), get(a-5)].min + 1
    end
end
dp = DP.new
t = gets.to_i
t.times do
    n = gets.to_i
    list_line = gets
    if n != 0
        list = list_line.split.map { |x| x.to_i }
        min = list.min
        best = (min-4..min).map { |x| list.map { |y| dp.get(y-x) }.inject(:+) }.min
        puts best
    else
        puts 0
    end
end
