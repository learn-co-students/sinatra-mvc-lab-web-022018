
class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(word)
    vowel = word.scan(/[aeiouy,AEIOUY]/).first
    if !word.chars.first.scan(/[aeiouy,AEIOUY]/).empty?
      result = vowel + word.split(vowel, 2)[1] + word.split(vowel, 2)[0] + "way"
      result
    else
      result = vowel + word.split(vowel, 2)[1] + word.split(vowel, 2)[0] + "ay"
      result
    end
  end

  def to_pig_latin(word)
    word.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
