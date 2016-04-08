module MoveDiagonalModule

	def valid_diagonal_movement?(origin, destination)
		is_diagonal_movement?(origin, destination) && road_are_empty?(origin, destination)
	end

	def is_diagonal_movement?(origin, destination)
		(destination[0] - origin[0]).abs == (destination[1] - origin[1]).abs
	end

	def road_are_empty?(origin, destination)
		many_steps = (destination[0] - origin[0]).abs - 1
		sum_or_rest = []
		sum_or_rest[0] = (destination[0] - origin[0] < 0) ? -1 : 1
		sum_or_rest[1] = (destination[1] - origin[1] < 0) ? -1 : 1
		steps = 1.upto(many_steps)
		empty = true
		steps.each do |i|
			if !@board.are_piece_in?(origin[0] + i.to_i * sum_or_rest[0], origin[1] + i.to_i * sum_or_rest[1])
				empty = false
			end
		end
		empty
	end

end
