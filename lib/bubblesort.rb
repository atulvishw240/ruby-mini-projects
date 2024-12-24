def bubble_sort(array)
	counter = 0

	while counter < array.size - 1
		# Create two pointers
		left = 0
		right = 1
		# In each pass last element will get set, so we have to make 1 less switch
		while right < array.size - counter
			if array[left] > array[right]
				# Swap
				temp = array[left]
				array[left] = array[right]
				array[right] = temp
			end

			left += 1
			right += 1
		end

		counter += 1
	end
	array
end
