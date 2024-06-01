# def substrings(word, dictionary)
#     my_hash = Hash.new
#     dictionary.each do |element|
#         counter = 0
#         if word.downcase.include?(element.downcase)
#             if my_hash.include?(element)
#                 my_hash[element] = my_hash[element] + 1
#             else
#                 counter = counter + 1
#                 my_hash[element] = counter
#             end
#         end
#     end
#     my_hash
# end

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

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)

