#taken from an Odin solution at: https://github.com/eugyev/odinprojects/blob/master/stock_picker.rb

def stock_picker(prices)
	if prices.length < 2
		puts "not enough dates!"
	end
	current_best_profit = prices[1] - prices[0] #source code says prices.first
	current_best_dates = [0,1]
	prices.each_with_index do |buy_price, buy_day|
		(buy_day...prices.length).each_with_index do |sell_day|
			sell_price = prices[sell_day]
			if (sell_price - buy_price) > current_best_profit
				current_best_profit = sell_price - buy_price
				current_best_dates = [buy_day, sell_day]
			end
		end
	end
	print current_best_dates
end

 stock_picker([17,3,6,9,15,8,6,1,10])
 #   => [1,4]  # for a profit of $15 - $3 == $12
