def ftoc(temp_fahrenheit)
  (((temp_fahrenheit - 32).to_f / 1.8).to_f).round(1)
end

def ctof(temp_celcius)
  ((temp_celcius * 1.8 + 32).to_f).round(1)
end