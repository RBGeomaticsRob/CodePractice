def encrypt(string)
	# Adapted to throw a hash character if not a lower or upper case letter - some refactoring
    string.chars.map { |i| (97..119).include?(i.chr.ord) || (65..87).include?(i.chr.ord) ?
    	(i.chr.ord + 3).chr : (120..122).include?(i.chr.ord) || (88..90).include?(i.chr.ord) ?
    	(i.chr.ord - 23).chr : 35.chr
    	}.join
end

def decrypt(string)
	# Adapted to throw a hash character if not a lower or upper case letter - some refactoring
        string.chars.map { |i| (100..122).include?(i.chr.ord) || (68..90).include?(i.chr.ord) ?
    	(i.chr.ord - 3).chr : (97..99).include?(i.chr.ord) || (65..67).include?(i.chr.ord) ?
    	(i.chr.ord + 23).chr : i
    	}.join
end

def encrypt_with_number(string, number)
	#Uses number to work out the shift in the range and the return character
	    string.chars.map { |i| (97..(122 - number)).include?(i.chr.ord) || (65..(90 - number)).include?(i.chr.ord) ?
    	(i.chr.ord + number).chr : ((123 - number)..122).include?(i.chr.ord) || ((91 - number)..90).include?(i.chr.ord) ?
    	(i.chr.ord - (26 - number)).chr : 35.chr
    	}.join
end

def decrypt_with_number(string, number)
	#Uses number to work out the shift in the range and the return character
  string.chars.map { |i| ((97 + number)..122).include?(i.chr.ord) || ((65 + number)..90).include?(i.chr.ord) ?
    	(i.chr.ord - number).chr : (65..(65 + number)).include?(i.chr.ord) || (97..(97 + number)).include?(i.chr.ord) ?
    	(i.chr.ord + (26 - number)).chr : 35.chr
    	}.join
end

#Works in terminal but not in Sublime as it doesn't handle interactive input

# puts "Enter the word: "
# x = gets.chomp

# puts "Enter the key: "
# y = gets.chomp.to_i
# #User could enter a non numeric need to write a check

# puts "Enter e for encrypt or d for decrypt"
# z = gets.chomp

# puts (z == "e" || z == "E") ? "Encrypted: #{encrypt_with_number(x,y)}" : "Decrypted: #{decrypt_with_number(x,y)}"


puts encrypt_with_number("ABCDEFGHIJKLMNOPQRSTUVWXYZ0abcdefghijklmnopqrstuvwxyz",3)
puts decrypt_with_number("DEFGHIJKLMNOPQRSTUVWXYZABC0defghijklmnopqrstuvwxyzabc",3)

puts decrypt_with_number(encrypt_with_number("ABCDEFGHIJKLMNOPQRSTUVWXYZ0abcdefghijklmnopqrstuvwxyz",10),10)



