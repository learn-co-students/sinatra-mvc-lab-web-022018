class PigLatinizer


	def piglatinize(word)
		
		if word[0].downcase.scan(/[aeoui]/).count == 1
			word = word + 'way'
		else
			while word[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count == 1
				word = word[1..-1] + word[0]
			end
			word += 'ay'
		end
		word
	end

	def to_pig_latin(string)
		puts string
		new_string = string.split(' ').map {|word| piglatinize(word)}
		new_string.join(' ')
	end
				

end