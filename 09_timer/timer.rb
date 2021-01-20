class Timer

 def initialize(second = 0.0)
    @second = second
  end

  def seconds
    return @second
  end

  def seconds=(s)
    @second = s
  end

# Возвращает время в формате hh:mm:ss
  def time_string
    h = isahor()
    m = isamin()
    s = isasec()

    return  "#{h}:#{m}:#{s}"
  end

 # Определяет есть ли часы
  def isahor
    if  @second < 432000 && @second > 3600
        houers = @second/(60*60)
        @second = @second - houers * 60 * 60
        if houers < 10
            return "0#{houers}"
        else
            return "#{houers}"
        end

    else
      return "00"
    end
  end


  # Определяет есть ли минуты
  def isamin
      if  @second < 3599 && @second > 60
        minutes = @second/60
        @second = @second - minutes  * 60
        if minutes < 10
            return "0#{minutes}"
        else
            return "#{minutes}"
        end

      else
        return "00"
     end
   end

  # Определяет есть ли секунды
     def isasec
       if @second < 10
          return  "0#{@second}"
       else
         return  "#{@second}"
       end
     end




  end

  #minutes = @second % 60
  #return  "00:00:#{second}" if second < 60
  #houers = @second % 1200
  #return "#{houers}:#{minutes}:#{second}"
