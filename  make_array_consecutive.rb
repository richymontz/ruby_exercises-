def make_consecutive(array)
  sorted = array.sort
  needs = []

  sorted.each_with_index do |n, i|
    if sorted[n+1]
      range = ( (n+1) .. (sorted[i+1] - 1) ).to_a
      needs.concat(reange) if range.size ? > 0
    end
  end

  needs.size
end