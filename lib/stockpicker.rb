def stockpicker(array)
    buy_price = 0
    sell_price = 0
    profit = 0

    for i in array do
        temp_buy = i

        j = array.index(temp_buy) + 1
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


        