class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    self.text.split(" ").count
  end

  def count_of_vowels
    self.text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    self.text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
  
end
