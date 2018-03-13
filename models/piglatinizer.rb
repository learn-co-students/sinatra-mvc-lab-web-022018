require "pry"
class PigLatinizer
  def piglatinize(text)
    vowels = "aeiou".split('')
    text = text.split("")
    if vowels.include?(text.first.downcase)
      text = text.join + "way"
    else
      until vowels.include?(text.first.downcase)
        text.push(text.shift)
      end
      text = text.join + "ay"
    end
    text
  end

  def to_pig_latin(text)
    text = text.split(" ")
    text = text.map{|word| piglatinize(word)}.join(" ")
  end
end
# binding.pry
# "stuff"
