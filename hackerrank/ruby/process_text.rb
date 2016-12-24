def process_text (arr)
  arr.reduce(""){ |a,b| "#{a} #{b.strip}" }.strip
end

p process_text(["Hi, \n", " Are you having fun?    "])
