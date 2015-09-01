def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, numb = 2)
  string_repeat = []

  numb.times do
    string_repeat << string
  end

  string_repeat.join(' ')
end

def start_of_word(word, number)
  word.split('').shift(number).join
end

def first_word(string)
  string.split(' ').first
end

def titleize(string)
  small_words = ["and", "the", "over"]
  title = string.split(' ')

  title.first.capitalize!
  for i in 1..(title.length - 1)

    if !small_words.include?(title[i])
      title[i].capitalize!
    end
  end

  title.join(' ')
end
