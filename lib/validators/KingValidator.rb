class KingValidator < Validator

	def check_move?(team, origin, destination)
		end_pos_free?(team, destination) && valid_king_movement?(origin, destination)
	end

	def valid_king_movement?(origin, destination)
		(destination[0] - origin[0]).abs <= 1 && (destination[1] - origin[1]).abs <= 1
	end

end