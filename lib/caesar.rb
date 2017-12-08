def caesar_encode(string, offset)
    letters = [*('a'..'z')]
    string = string.split("")
    string.collect do |alpha|
        if alpha == alpha.upcase && letters.include?(alpha.downcase)
            index = (letters.index(alpha.downcase) + offset)%26
            alpha = letters[index].upcase
        elsif letters.include?(alpha)
            index = (letters.index(alpha) + offset)%26
            alpha = letters[index]
        else 
        alpha
        end
    end.join
end

# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)

def caesar_decode(string, offset)
    caesar_encode(string,offset*-1)
end 

# puts "What would you like to decode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)