class Person

  attr_accessor :age

  def initialize(initialAge)
    if initialAge < 0
      puts "Age is not valid, setting age to 0."
      self.age = 0
    end
    self.age = initialAge
  end

  def amIOld()
    if age < 13
      puts "You are young."
    elsif age < 18
      puts "You are a teenager."
    else
      puts "You are old."
    end
  end

  def yearPasses()
    self.age += 1
  end

end

ages = [-1, 10, 16, 18]
ages.each do |age|
  p=Person.new(age)
  p.amIOld()
  for j in (1..3)do
      p.yearPasses()
  end
  p.amIOld
  puts ""
end
