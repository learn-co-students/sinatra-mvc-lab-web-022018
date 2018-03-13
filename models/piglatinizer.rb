# class PigLatinizer
#
#     def piglatinize(word)
#       replace_consonants_to_end_of_word(word)
#
#       append_n_to_last_letter_y(word) or append_y_to_last_letter_vowel(word)
#
#       recapitalize(word)
#
#       word += 'ay'
#     end
#
#     def replace_consonants_to_end_of_word(word)
#       word.concat(word.slice!(/^[^aeiou]*/i || ""))
#     end
#
#     def append_n_to_last_letter_y(word)
#       word.gsub!(/y$/, "yn")
#     end
#
#     def append_y_to_last_letter_vowel(word)
#       word.gsub!(/([aeiou])$/, '\1y')
#     end
#
#     def recapitalize(word)
#       word.capitalize! if word.downcase!
#     end
#     def to_pig_latin(sentence)
#       sentence.split.collect { |word| piglatinize(word) }.join(" ")
#     end
# end

class PigLatinizer

  def piglatinize(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
  end

end
