class WordFormatter

  def initialize(string)
    @string = string
  end

  def upcase()
    return @string.upcase
  end

  def upper_camelcase()
    words = @string.split
    words.each { |word| word.capitalize! }
    return words.inject { |camelcase, word| camelcase + word }
  end

end