class Encryptor
 def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end

  def encrypt_letter(letter)
  	lowercase_letter = letter.downcase
  	cipher[lowercase_letter]
  end

  def encrypt(string)
  	#cut the input string into letters
	letters = string.split("")
  	#encrypt the letters one by one gathering the results
  	results = []
  	letters.each do |letter|
  		encrypted_letter = encrypt_letter(letter)
  		results.push(encrypted_letter)
  	end

  	#join the results back together in one string
  	results.join
	end
end
