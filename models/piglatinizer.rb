require 'pry'

class PigLatinizer
  attr_accessor :word
  def inititalize(word=nil)
    @word=word
    # binding.pry
  end #word

  def piglatinize(word)
    # binding.pry
    split=word.split("")
    if split[0].downcase.match(/^[aeiou]/) #https://stackoverflow.com/questions/5488028/how-do-i-check-for-vowels-in-javascript
      #pig differently
      # puts "vowel found"
      self.start_with_vowel(split)
    else
      #normal pig
      # puts "no vowel #{word}"
      self.start_with_consanant(split)
    end #if
    # binding.pry
  end #end piglatinize


  def start_with_consanant(word_array)
    first_half=""
    while(!word_array[0].downcase.match(/^[aeiou]/))
      first_half += word_array.shift
      break if word_array.length == 0 #saftey
    end #while
    # first_half.join("")
    # word.join("")
    word_array << first_half
    word_array.join("") << "ay"
  end#end start_with_consanant

  def start_with_vowel(word_array)
     word_array.join("") << "way"
    # first_half = ""
    # while(word_array[0].downcase.match(/^[aeiou]/))
    #   first_half += word_array.shift
    #   break if word_array.length == 0 #saftey
    # end #while
    # word_array << first_half
    # word_array.join("") << "way"
  end #start_with_vowel

  def to_pig_latin(sentence)
    sentence.split(" ").map {|word| self.piglatinize(word)}.join(" ")
  end #to_pig_latin

end#class
