def bubble_sort(unsorted_array)
    counter = 0
    while counter < unsorted_array.size - 1
        left = 0
        right = 1
        while right < unsorted_array.size
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

array = [756, 12, 92, 62, 66, 22, 16, 19, 28, 54]
puts bubble_sort(array)
