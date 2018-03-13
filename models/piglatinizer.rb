class PigLatinizer

  attr_accessor :text

  # def initialize(text)
  #   @text = text.downcase
  # end

  def piglatinize(text)
    alphabet = ('A'..'Z').to_a
    vowels = %w[A E I O U]
    consonants = alphabet - vowels
    if vowels.include?(text[0].capitalize)
      text = text + "way"
    elsif consonants.include?(text[0].capitalize) && consonants.include?(text[1].capitalize) && consonants.include?(text[2].capitalize)
      text = text[3..-1] + text[0..2] + "ay"
    elsif consonants.include?(text[0].capitalize) && consonants.include?(text[1].capitalize)
      text = text[2..-1] + text[0..1] + "ay"
    elsif consonants.include?(text[0].capitalize)
      text = text[1..-1] + text[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase = phrase.split()
    translation = []
    phrase.map do |word|
      translation << piglatinize(word)
    end
    translation.join(" ")
  end

end
