
# # Write a function that receives an array of integers, and returns the last unique integer. 
# E.g.: 
# [3,2,1] => 1 
# [3,1,2,1] => 2 
# [1,3,2,3,0,4,1] => 4 
# [1,2,1,2] => nil 
# [1,2,0,1,2] => 0

def last_unique(numbers)
  counts = Hash.new(0)
  numbers.each do |n|
    counts[n] += 1
  end

  numbers = counts.select { |k, v| v == 1 }.keys
  puts numbers.last

  ## optimized
  # unique_numbers = []
  # counts = Hash.new(0)
  # numbers.reverse_each do |n|
  #   counts[n] += 1
  #   unique_numbers << n if counts[n] == 1
  # end

  # unique_numbers.last
  
end


puts last_unique [3,2,1]
puts last_unique [3,1,2,1]
puts last_unique [1,3,2,3,0,4,1]
puts last_unique [1,2,1,2]
puts last_unique [1,2,0,1,2]