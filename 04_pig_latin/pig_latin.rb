#Добавляет ay в конец слова
def plusAY(str)
  return str+"ay"
end
#переносит согласные в конец слова (костыль с 'qu' -> в конце просто добавил 'u')
def consonantToEnd(str)
  consonant = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z','u']
  while consonant.include?str[0]
    step = str[0]
    str = str[1...str.length]
    str << step
  end
  return plusAY(str)
end

#Определяет с какой буквы начинаеться слово
def determine(str)

  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?str[0]
    plusAY(str)
  else
    consonantToEnd(str)
  end
end

#Делит строку на слова
def translate(str)

  strRes = str.split.map { |word| determine(word)}.join(" ")
end
