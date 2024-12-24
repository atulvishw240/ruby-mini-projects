def bubble_sort(unsorted_array)
    counter = 0
    size_of_array = unsorted_array.size

    while counter < size_of_array - 1
        # Create two pointers
        left = 0
        right = 1
        # In each pass last element will get set, so we have to make 1 less switch
        while right < size_of_array - counter
            if unsorted_array[left] > unsorted_array[right]
                # Swap
                temp = unsorted_array[left]
                unsorted_array[left] = unsorted_array[right]
                unsorted_array[right] = temp
            end

            left += 1
            right += 1
        end

        counter += 1
    end
    unsorted_array.to_a
end
