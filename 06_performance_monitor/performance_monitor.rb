def measure (n = 1,&block)

  allTime = 0
  for i in 0...n
    time1 = Time.now
    block.call
    time2 = Time.now
    allTime += (time2 - time1)
  end
  return  allTime/n
end
