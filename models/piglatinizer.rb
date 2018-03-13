class PigLatinizer
  attr_reader :text


  def piglatinize(text)
    word = text.split("")
    vowels = ["a","e","i","o","u"]
      if vowels.include?(word[0].downcase)
        result = word.join("") + "way"
      else
        result = word.push(word.shift)
        until vowels.include?(result[0])
          result = word.push(word.shift)
        end
        result.join("") + "ay"
      end
    end

    def to_pig_latin(text)
      sentence = text.split(" ").map do |word|
        piglatinize(word)
      end
      sentence.join(" ")
    end










end
