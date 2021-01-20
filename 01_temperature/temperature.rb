def ftoc(fahrenheit)
  return 0 if  fahrenheit == 32
  return (fahrenheit-32.0)*5.0/9.0
end

def ctof(celsius)
  return 32 if  celsius == 0
  return celsius * 9.0 / 5.0 + 32.0

end
