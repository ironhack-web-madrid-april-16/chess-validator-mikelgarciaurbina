class HorseValidator < Validator

	def check_move?(team, origin, destination)
		end_pos_free?(destination) && valid_horse_movement?(origin, destination)
	end

	def valid_horse_movement?(origin, destination)
		is_horse_movement?(origin, destination, 2, 1) || is_horse_movement?(origin, destination, 1, 2)
	end

	def is_horse_movement?(origin, destination, line_num, col_num)
		(destination[0] - origin[0]).abs == line_num && (destination[1] - origin[1]).abs == col_num
	end

end