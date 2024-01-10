def id_mtrx(n)
	return "Error" unless n.is_a? Integer 
	return [] if n == 0 

	abs = n.abs
	identity_matrix = Array.new(abs){ [] }
	
	identity_matrix.each_with_index do |row, row_index|
		row.concat Array.new(abs){ |column_index| column_index == row_index ? 1 : 0  }
	end
	
	n < 0 ? identity_matrix.map!(&:reverse) : identity_matrix
end

p id_mtrx 2
p id_mtrx 3
p id_mtrx 4
p id_mtrx -2
p id_mtrx -6
