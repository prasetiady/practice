def strike (str)
  "<strike>#{str}</strike>"
end

def mask_article (str, arr)
  mask_str = str
  arr.each { |p| mask_str = mask_str.gsub(p,strike(p)) }
  mask_str
end

p strike("Meow!")
p strike("Foolan Barik")
p mask_article("Hello World! This is crap!", ["World", "crap"])
