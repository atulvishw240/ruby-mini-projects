def substrings(word, dictionary)
    counter = 0
    my_hash = Hash.new
    dictionary.each do |element|
        if word.downcase.include?(element.downcase)
            counter += 1
            my_hash[element.downcase] = counter
        end
    end
    my_hash
end

array = ["tul", "ish", "wak", "waka", "arma"]
p substrings("Atul Vishwakarma", array)

