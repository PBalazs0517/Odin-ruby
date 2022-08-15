def bubble_sort(numbers)
    new_order = []
    i = 0
    while i < numbers.length do 
        if new_order == []
            new_order.push(numbers[i])
        elsif numbers[i] < new_order[0]
            new_order.unshift(numbers[i])
        elsif numbers[i] > new_order[0]
            new_order_item_index = 0
            while new_order_item_index < new_order.length do
                if numbers[i] == new_order[new_order_item_index]
                    new_order.insert(new_order_item_index, numbers[i])
                    break
                elsif numbers[i] < new_order[new_order_item_index]
                    new_order.insert(new_order_item_index, numbers[i])
                    break
                elsif numbers[i] > new_order[new_order.length-1] 
                    new_order.push(numbers[i])
                    break
                end
                new_order_item_index += 1
            end
        end   
        i += 1
    end  
    puts new_order
end

bubble_sort([94, 62, 48, 141, 51, 71, 23, 86, 51, 155, 39, 68, 100, 128, 149, 167, 144, 151, 164, 179, 197, 112, 86, 137, 174, 33, 23, 116, 130, 150, 141, 76, 88, 157, 2, 134, 138, 85, 107, 143, 15])