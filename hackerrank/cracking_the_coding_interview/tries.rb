class Tries
  def data
    @data
  end
  def has_child?
    !@child.empty?
  end
  def words
    @words
  end
  def initialize (chr = "")
    @data = chr
    @child = {}
    @words = 0
  end
  def add(str)
    new_word = 0;
    unless str.empty?
      if @child.has_key? str[0]
        new_word = @child[str[0]].add(str[1..-1])
      else
        @child[str[0]] = Tries.new(str[0])
        @child[str[0]].add(str[1..-1])
        new_word = 1
      end
    end
    @words += new_word
    new_word
  end
  def find(str)
    if str.empty?
      return self
    else
      if @child.has_key? str[0]
        return @child[str[0]].find(str[1..-1])
      else
        return nil
      end
    end
  end
end


n = gets.strip.to_i
inputs = []
n.times do |num|
  inputs << gets.strip
end

dictionary = Tries.new
inputs.each do |input|
  op,contact = input.split(" ")
  contact = contact.strip
  if op == "add"
    dictionary.add(contact + "*")
  elsif op == "find"
    if contact.nil?
      puts 0
    else
      node = dictionary.find("#{contact}")
      puts node ? node.words : 0
    end
  end
end
