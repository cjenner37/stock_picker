

def stock_picker(prices)
	if prices.length < 2
		puts "not enough dates!"
	end
	puts prices
end

 stock_picker([17,3,6,9,15,8,6,1,10])
 #   => [1,4]  # for a profit of $15 - $3 == $12
