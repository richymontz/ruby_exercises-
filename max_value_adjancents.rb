def max_adjacent_products(inputArray)
   max_value = inputArray[0] * inputArray[1]
   
   (1..inputArray.length - 2).each do |i|
        current_value = inputArray[i] * inputArray[i + 1]
        max_value = current_value if current_value > max_value
   end
   
   max_value
end

puts max_adjacent_products([3,4,5,3,5])
