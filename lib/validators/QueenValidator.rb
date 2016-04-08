class QueenValidator < Validator
	include MoveHorVerModule
	include MoveDiagonalModule

	def check_move?(team, origin, destination)
		end_pos_free?(team, destination) && (valid_horizontal_vertical_movement?(origin, destination) || valid_diagonal_movement?(origin, destination))
	end

end