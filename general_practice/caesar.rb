def caesar_cipher(strings,int=0)
	alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
	encrypted = ""
	strings.each_char do |a|
		if alphabet.include?(a)
			encrypted+= alphabet[alphabet.index(a) - int]
		else
			encrypted+= a	
		end
	end
	puts encrypted
end

caesar_cipher("strOng!",3)