def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  words = string.split(' ')

  words.map! do |word|
    if vowels.include?(word[0])
      word << "ay"
    else
      letters = word.split("")

      i = 0

      while !vowels.include?(letters[0]) && i < 3 do
        letters << letters[0]
        letters.shift
        if letters.first == 'u' && letters.last == 'q'
          letters << letters[0]
          letters.shift
        end
        i += 1
      end

      word = letters.join
      word << "ay"
    end
  end

  words.join(' ')
end


