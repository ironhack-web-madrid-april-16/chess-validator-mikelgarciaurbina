class RookValidator < Validator
	include MoveHorVerModule

	def check_move?(team, origin, destination)
		end_pos_free?(destination) && valid_horizontal_vertical_movement?(origin, destination)
	end

end