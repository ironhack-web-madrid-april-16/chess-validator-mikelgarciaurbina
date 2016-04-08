class Validator
	attr_reader :board
	def initialize(board)
		@board = board
	end

	def end_pos_free?(team, destination)
		@board.are_piece_in?(destination[0], destination[1]) || piece_eat?(team, destination)
	end

	def piece_eat?(origin_team, destination)
		team, piece = @board.board_matrix[destination[0]][destination[1]].to_s.split("")
		eat = false
		if origin_team != team
			eat = true
		end
		eat
	end
end