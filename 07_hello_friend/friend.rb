class Friend
  def greeting(who = nil)
  return "Hello, #{who}!" if  who != nil
  return "Hello!"
  end
end
