class Dictionary
  def initialize
    @dictionary = {}
  end

  def entries
   @dictionary
  end

  def add(definition)
    if definition.class == Hash
      @dictionary.merge!(definition)
    else
      @dictionary[definition] = nil
    end
  end

  def keywords
    @dictionary.keys.sort
  end

  def include?(key)
    @dictionary.include?(key)
  end

  def find(word)
    @dictionary.select do |k, v|
     k.include? word
    end
  end


end