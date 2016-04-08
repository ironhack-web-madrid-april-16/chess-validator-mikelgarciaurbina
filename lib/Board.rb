class Board
	def initialize(board_matrix, moves, validators)
		@board_matrix = board_matrix
		@moves = moves
		@validators = validators
	end

	def are_piece_in?(line, column)
		@board_matrix[line][column] == nil
	end

	def get_piece(line, col)
		@board_matrix[line][column]
	end

	def check_all_movies
		@moves.each do |move|
			origin, destination = []
			origin = [move[0][0], move[0][1]]
			destination = [move[1][0], move[1][1]]
			team, piece = @board_matrix[origin[0]][origin[1]].to_s.split("")
			#binding.pry
			if team != nil
				move_ok = @validators[piece].new(self).check_move?(team, origin, destination)
				puts (move_ok) ? "LEGAL" : "ILLEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end
end