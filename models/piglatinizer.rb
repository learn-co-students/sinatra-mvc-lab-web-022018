class PigLatinizer
  def piglatinize(word)
    first=''
    pig=''
    if vowelcheck(word[0])
      pig = word << "w"

    elsif !vowelcheck(word[1]) && !vowelcheck(word[2])
      first = word[0,3]
      pig = word[3,(word.length)]
    elsif !vowelcheck(word[1])
      first = word[0,2]
      pig = word[2,(word.length)]
    else
      first = word[0]
      pig = word[1,(word.length)]
    end
    pig << first
    pig << "ay"
  end
  def vowelcheck(character)
    character.downcase.match(/[aeoui]/)
  end
  def to_pig_latin(sentence)
    sentence.split.map {|word| piglatinize(word)}.join(" ")
  end
end
