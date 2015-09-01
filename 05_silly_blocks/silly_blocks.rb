def reverser
  words = yield.split(" ")
  words.map! do |word|
     word.reverse
  end

  words.join(" ")
end

def adder(number = 1)
  num = yield
  # what do you want do you with num?
  numb = number + num
end

def repeater (number = 1)
  number.times do
    yield
  end
end