# [17, 3, 6, 9, 15, 8, 6, 1, 10]

# Takes an array as input
# Expected Output : [3, 15] (Buying price, Selling price)
# Select 1st element of the array as buying price => 17
# Find temp_selling_price from the rest of the array => (3, 6, 9, 15....)
# Calculate temp_profit => temp_selling_price - temp_buying_price
# If temp_profit is greater than profit then sell at that price, therefore update buy_price, sell-price and Profit
# Move to next element of the array => 3, 6, 9, 15, 8, 6, 1, 10
# Selected 3 as temp buy_price
# If for any combination with 3 and after 3 elements profit is greater than it was with 17
# Update buy_price and sell_price and profit
# Keep doing it until you reach the end of array


def stockpicker(array)
    buy_price = 0
    sell_price = 0
    profit = 0

    for i in array do
        temp_buy = i

        j = array.index(temp_buy) + 1
        # j = 1 This led to the while loop bug. During second iteration (1 > 1) which evaluated to false
        while j > array.index(temp_buy) && j < array.size
            temp_sell = array[j]
            temp_profit = temp_sell - temp_buy
            if temp_profit > profit
                profit = temp_profit
                buy_price = temp_buy
                sell_price = temp_sell
            end
            
            j += 1
        end
    end

    buy_day = array.index(buy_price)
    sell_day = array.index(sell_price)
    return [buy_day, sell_day]
end


        