class PigLatinizer

  def piglatinize(text)
    if text.length > 0
      if text[0].downcase =~ /[aeoui]/
        text + "way"
      else
        result = text.split(/(?=[aeiouAEIOU])/, 2)
        result[1] + result[0] + "ay"
      end
    end
  end

  def to_pig_latin(words)
    words.split(" ").map{|w| piglatinize(w)}.join(" ")
  end

end
