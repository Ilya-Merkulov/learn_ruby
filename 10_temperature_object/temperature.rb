
class Temperature
attr_accessor :myHash
#def  initialize (:fahrenheit => Fahrenheit, :celcius => Celsius)
def  initialize (x = {:f => nil, :c => nil})
    @myHash = x
end

def in_fahrenheit
    return myHash[:f] if myHash[:c] == nil
    return 32 if  myHash[:c]  == 0
    return myHash[:c] * 9.0 / 5.0 + 32.0
end

def in_celsius
    return myHash[:c] if myHash[:f] == nil
    return 0 if myHash[:f] == 32
    return (myHash[:f] - 32.0) * 5.0 / 9.0
end

def self.from_celsius(temp)
    Temperature.new({c: temp})
end

def self.from_fahrenheit(temp)
    Temperature.new({f: temp})
end

end

class Celsius < Temperature
  def  initialize (x) @myHash = {:f => nil, :c => x}
  end
end


class Fahrenheit < Temperature
  def  initialize (x) @myHash = {:f => x, :c => nil}
  end
end
