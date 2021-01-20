class Dictionary
  attr_accessor :hash

  def initialize(hash = Hash.new)
    @hash = hash
  end
  def entries
    x = @hash
    @hash = {}
    return x
  end

  def add(hash)

    if hash.is_a?(Hash)
    @hash.merge!(hash)
    elsif hash.is_a?(String)
    @hash.merge!(hash => nil)
    end
  end

  def keywords
     @hash.keys.sort
  end

  def include?(some_string)
    if @hash.empty?
        return false
    elsif @hash.keys.first != some_string
        return false
    else
      puts @hash.empty?
        return true
    end
  end




  def find(x)
    return {} if  @hash.empty?
    @temp = Hash.new
    @temp = @hash
      puts x.class
    y = 0
    for i in 0...@hash.length
      if @hash.keys[i].to_s.include?(x)
      else
          @temp.delete(@hash.keys[i-y])
          y += 1
      end
    end
  puts @temp.class
   return @temp
  end



  def printable


  end


end
