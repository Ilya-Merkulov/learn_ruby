def echo(txt)
  "#{txt}"
end

def shout(txt)
  "#{txt.upcase}"
end

def repeat(txt, n = 2)
    mySt = (txt + " ") * (n-1) + txt
    return mySt
end


def start_of_word(*txt, n)
  str = ""
  i = 0
    while i < n
          str += txt[0][i]
          i += 1
    end
  return str
end

def first_word(str)
#{name.partition(" ").first}
firstWord = str.partition(" ").first
return  firstWord
end


#Выбирает какие слова нужно писать с большой
def litl_word(word)
  litl_word_arr = ['and', 'over', 'the']
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
