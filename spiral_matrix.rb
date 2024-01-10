def spiral_matrix(side, string)
	matrix        = Array.new(side){ Array.new(side){ "+" } }
  cells         = side * side
  fitted_string = string[0..(cells - 1)]
  start_index   = side.odd? ? (side.to_f / 2).round - 1 : 0
  
  matrix[start_index][start_index] = fitted_string[0]

  fitted_string.each do |l|
    matrix.each_with_index do |array, index|
      
    end
  end
end

spiral_matrix 3, 'loop'