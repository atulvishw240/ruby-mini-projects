def substrings(string, dictionary)
    word_array = string.downcase.split(' ')
    output = Hash.new

    # Select a substring from dictionary
    dictionary.each do |substring|
        # Intializing counter for every substring
        counter = 0 
        # Select a word from word_array
        word_array.each do |word|
            # Check if word includes substring
            if word.include?(substring)
                if output.include?(substring)
                    output[substring] += 1
                else 
                    counter = counter + 1
                    output[substring] = counter
                end
            end
        end
    end

    output
end

