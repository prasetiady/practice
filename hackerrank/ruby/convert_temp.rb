def cToF (temp)
  (temp.to_f * 9 / 5) + 32
end

def fToC (temp)
  (temp.to_f - 32) * 5 / 9
end

def cToK (temp)
  temp.to_f + 273.15
end

def kToC (temp)
  temp.to_f - 273.15
end

def fToK (temp)
  cToK(fToC(temp.to_f))
end

def kToF (temp)
  cToF(kToC(temp.to_f))
end

def convert_temp (temp, input_scale:, output_scale: "celsius")
  result = temp
  if (input_scale == "celsius")
    if (output_scale == "kelvin")
      result = cToK(temp)
    elsif (output_scale == "fahrenheit")
      result = cToF(temp)
    end
  elsif (input_scale == "kelvin")
    if (output_scale == "celsius")
      result = kToC(temp)
    elsif (output_scale == "fahrenheit")
      result = kToF(temp)
    end
  elsif (input_scale == "fahrenheit")
    if (output_scale == "celsius")
      result = fToC(temp)
    elsif (output_scale == "kelvin")
      result = fToK(temp)
    end
  end
  result
end

p convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
p convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
