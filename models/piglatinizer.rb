class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    # arr = string.split
    # arr.each do |word|
    fl = ""
    if word.downcase =~ /\A[^aeiou]/
      while word.downcase =~ /\A[^aeiou]/
        fl = fl + word.slice!(0)
      end
      word = word + "#{fl}ay"
    else
      word = word + "way"
    end
    word
    # end
  end

  def to_pig_latin(string)
    arr = string.split.collect do |word|
      piglatinize(word)
    end
    arr.join(" ")
  end

end
