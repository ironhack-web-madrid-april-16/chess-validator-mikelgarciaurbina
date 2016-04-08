class BishopValidator < Validator
	include MoveDiagonalModule

	def check_move?(team, origin, destination)
		end_pos_free?(team, destination) && valid_diagonal_movement?(origin, destination)
	end

end