def balance_brakets(str)
  if str.length%2 != 0 then return false end
  stack = []
  str.each_char do |chr|
    if (chr == "]" && stack.last == "[") ||
        (chr == "}" && stack.last == "{") ||
        (chr == ")" && stack.last == "(")
      stack.pop
    else
      stack.push(chr)
    end
  end
  stack.empty?
end

p balance_brakets("[[]]")
p balance_brakets("[")
