def substrings(string, dictionary)
	word_array = string.downcase.split(' ')
	output = Hash.new(0) # Default value

	dictionary.each do |substring|
		word_array.each do |word|
			output[substring] += 1 if word.include?(substring)
		end
	end

	output
end

