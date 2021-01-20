def add (x,y)
  return x + y
end

def subtract (x,y)
  return x - y
end

def sum(arr)
  sum = 0
  for i in 0...arr.length()
  sum += arr[i]
  end
  return sum
end

def multiply(*any)
    sum = 1
    for i in 0...any.length()
    sum *= any[i]
    end
  return sum
end

def power(x, a)
  return x**a
end


def factorial(n)
  resF = 1
  for i in 1..n
    resF *= i
  end
  return resF
end
