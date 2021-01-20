def reverser
   yield.split.map { |word| word.reverse}.join(" ")
end

def adder(x = 1, &block)
   block.call + x
end

def repeater(n = 1)
  if block_given?
    i = 0
    while i < n
      i += 1
      yield
    end
  else
    false
  end
end
