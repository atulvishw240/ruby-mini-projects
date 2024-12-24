# Return best day to buy and the best day to sell => [buy, sell]
def stockpicker(array)
	buy = 0
	sell = 0
	profit = 0

	array.each_with_index do |temp_buy, index|
		j = index + 1
		while j < array.size
			temp_sell = array[j]
			temp_profit = temp_sell - temp_buy
			if temp_profit > profit
				profit = temp_profit
				buy = index
				sell = j
			end
			
			j += 1
		end
	end

	[buy, sell]
end


        