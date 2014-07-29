class CaesarCipher

	def cipher(param)
		alphabet = ("a".."z").to_a
		search = alphabet.index(param)
		number = search - 3
		puts alphabet[number]
	end
end


CaesarCipher.new.cipher("b")