def sliding_sum(arr, n, k) 
	# subarray = []
  # index = n
  # from = 0

  # while index <= arr.length
  #   set = arr[from..index-1]

  #   subarray << set if set.sum == k
  
  #   from += 1
  #   index += 1
  # end

  # subarray
  arr.each_cons(n).select { |x| x.reduce(:+) == k }
end

p sliding_sum([1, 4, 2, 3, 5, 0], 2, 5)
p sliding_sum([5, 5, 5, 5, 5], 1, 5)
p sliding_sum([5, 5, 5, 5, 5], 5, 24)
p sliding_sum([3, 2, 1, 1, 3, 2], 4, 7)
p sliding_sum([3, 4, 1, 9, 9, 0, 3, 5, 4], 3, 8)
