class Book
  attr_reader :title

  def title=(title)

    small_words = ["the", "a", "an", "and", "in", "of"]
    words = title.split(" ")

    words.map! do |word|
      if !small_words.include?(word)
        word = word.capitalize
      else
        word
      end
    end

    words.first.capitalize!
    @title = words.join(" ")
  end
end