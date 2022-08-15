def stock_picker(prices) 
    best_price = { buy: 0, sell: 0, profit: 0}
    prices.each_with_index do |price, index| 
        i = index + 1
        while i < prices.length do 
            if prices[i] - price > best_price[:profit]
                best_price[:buy] = index
                best_price[:sell] = i
                best_price[:profit] = prices[i] - price
            end
            i += 1
        end
    end
    puts best_price
end

stock_picker([17,3,6,9,15,8,6,1,10])