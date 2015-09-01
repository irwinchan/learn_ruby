class Temperature

  def initialize (temp)
    @temp = temp
  end

  def to_fahrenheit
    @temp[:f] ||= (@temp[:c] * 1.8 + 32).to_f.round(1)
  end

  def to_celsius
    @temp[:c] ||= ((@temp[:f] - 32).to_f / 1.8).to_f.round(1)
  end

  def self.in_celsius(temp)
    self.new({:c => temp})
  end

  def self.in_fahrenheit(temp)
    self.new({:f => temp})
  end
end


class Celsius < Temperature
  def initialize(temp)
    @temp = {}
    @temp[:c] = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {}
    @temp[:f] = temp
  end
end

