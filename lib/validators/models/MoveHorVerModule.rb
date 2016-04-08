module MoveHorVerModule

	def valid_horizontal_vertical_movement?(origin, destination)
		is_horizontal_or_vertical_movement?(origin, destination) && road_hor_ver_are_empty?(origin, destination)
	end

	def is_horizontal_or_vertical_movement?(origin, destination)
		origin[0] == destination[0] || origin[1] == destination[1]
	end

	def road_hor_ver_are_empty?(origin, destination)
		if origin[0] == destination[0]
			empty_line?(origin[0], origin[1], destination[1])
		else
			empty_column?(origin[1], origin[0], destination[0])
		end
	end

	def empty_line?(line, origin_col, destination_col)
		if destination_col < origin_col
			destination_col, origin_col = origin_col, destination_col
		end
		empty = true
		(origin_col+1..destination_col-1).each do |column|
			if !@board.are_piece_in?(line, column)
				empty = false
			end
		end
		empty
	end

	def empty_column?(column, origin_line, destination_line)
		if destination_line < origin_line
			destination_line, origin_line = origin_line, destination_line
		end
		empty = true
		(origin_line+1..destination_line-1).each do |line|
			if !@board.are_piece_in?(line, column)
				empty = false
			end
		end
		empty
	end
	
end
