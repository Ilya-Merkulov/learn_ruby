class  Book
  @text = nil



  def title=(text)
  @text = text
  end

  def title
  titleize(@text)
  end


  def litl_word(word)
    litl_word_arr = ['and', 'over', 'the', 'in', 'of', 'a', 'an']
    return word if litl_word_arr.include? word
    return word.capitalize
  end

  def titleize(str)
  # Все слова делаю с большой буквы
  # Заменяю слова которые должны быть с маленькой с помощью litl_word
    strRes = str.split.map { |word| litl_word(word)}.join(" ")
  # Первое слово в предложении сделаь с заглавной
    strRes[0] =   strRes[0].capitalize
    return strRes

  end

end
