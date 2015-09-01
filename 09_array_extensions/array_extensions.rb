class Array
  def sum
    self.reduce(:+) ? self.reduce(:+) : 0
  end

  def square
    self.map do |number|
      number * number
    end
  end

  def square!
    self.map! do |number|
      number * number
    end
  end
end
