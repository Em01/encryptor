class Encryptor
 def cipher(rotation)
  characters = (''..'z').to_a
  rotated_characters = characters.rotate(rotation)
  Hash[characters.zip(rotated_characters)]
end
  #   {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
  #    'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
  #    'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
  #    'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
  #    'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
  #    'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
  #    'y' => 'l', 'z' => 'm'}
  # }
  end

  def encrypt_letter(letter)
    rotation = 13
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string)
	letters = string.split("")
  	
  	results = []
  	letters.each do |letter|
  		encrypted_letter = encrypt_letter(letter)
  		results.push(encrypted_letter)
  	end

  	
  	results.join
	end
end
