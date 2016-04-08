class PawnValidator < Validator

	def check_move?(team, origin, destination)
		end_pos_free?(destination) && valid_pawn_movement?(team, origin, destination)
	end

	def valid_pawn_movement?(team, origin, destination)
		if origin[1] == destination[1]
			if origin[0] == get_initial_pos(team) && origin[0] + 2 * get_team_sum(team) == destination[0]
				return @board.are_piece_in?(origin[0] + 1 * get_team_sum(team), origin[1])
			end
			if origin[0] + 1 * get_team_sum(team) == destination[0]
				return true
			end
		end
		return false
	end

	def get_team_sum(team)
		(team == "b") ? 1 : -1
	end

	def get_initial_pos(team)
		(team == "b") ? 1 : 6
	end

end