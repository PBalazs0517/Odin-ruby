def caesar_cipher(str, shift_amount)
    alphabat = ("a".."z").to_a
    chars_of_str = str.chars
    finish_str = ""
    chars_of_str.each do | char |
        if alphabat.any? { | letter_of_alphabat | letter_of_alphabat == char }  
            index_to_shift = alphabat.index(char)
            shift_amount.times do 
                index_to_shift += 1
                if index_to_shift == 27  
                    index_to_shift = 0
                end
            end
            finish_str += alphabat[index_to_shift]
        elsif alphabat.any? { | letter_of_alphabat | letter_of_alphabat.upcase == char }  
            index_to_shift = alphabat.index(char.downcase)
            shift_amount.times do 
                index_to_shift += 1
                if index_to_shift == 27  
                    index_to_shift = 0
                end
            end
            finish_str += alphabat[index_to_shift].upcase
        else 
            finish_str += char
        end
    end
    puts finish_str
end

puts "Enter a sentence than enter how many times you want it shifted: "
caesar_cipher(gets.chomp, gets.chomp.to_i)