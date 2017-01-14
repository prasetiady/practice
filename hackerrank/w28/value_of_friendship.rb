class Peoples
  attr_reader :peoples

  def initialize(count)
    @friends = Array.new
    for i in (1..count)
      @friends << [i]
    end
  end

  def addFriendShip(i,i2)
    index_i = @friends.index { |a| a.include?(i) }
    index_i2 = @friends.index { |a| a.include?(i2) }
    if index_i != index_i2
      na = @friends[index_i] + @friends[index_i2]
      if index_i < index_i2
        @friends = (index_i == 0 ? [] : @friends[0..index_i]) +
                   @friends[index_i + 1 .. index_i2 - 1] +
                   @friends[index_i2 + 1 .. -1]
      else
        @friends = (index_i2 == 0 ? [] : @friends[0..index_i2]) +
                   @friends[index_i2 + 1 .. index_i - 1] +
                   @friends[index_i + 1 .. -1]
      end
      @friends << na
    end
  end

  def countFriendShip
    c = 0
    @friends.each do |a|
      if a.size > 1
        c += a.size * (a.size - 1)
      end
    end
    c
  end
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n,m = gets.strip.split.map(&:to_i)
    peoples = Peoples.new(n)
    c = 0
    m.times do
      x,y = gets.strip.split.map(&:to_i)
      peoples.addFriendShip(x,y)
      c += peoples.countFriendShip
    end
    puts c
end
