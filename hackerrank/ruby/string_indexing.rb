# Your code here
def serial_average (str)
  # str format : SSS-XX.XX-YY.YY
  s = str[0,3]
  x = str[4,5].to_f
  y = str[10,5].to_f
  z = (x + y) / 2
  "%s-%.2f" % [s, z]
end

p serial_average("002-10.00-20.00")
