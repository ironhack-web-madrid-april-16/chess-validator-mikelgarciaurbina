class Board
	attr_reader :board_matrix
	def initialize(board_matrix, moves, validators, result_filepath)
		@board_matrix = board_matrix
		@moves = moves
		@validators = validators
		@result_filepath = result_filepath
	end

	def are_piece_in?(line, column)
		@board_matrix[line][column] == nil
	end

	def check_all_movies
		result_file_write = []
		@moves.each do |move|
			origin, destination = []
			origin = [move[0][0], move[0][1]]
			destination = [move[1][0], move[1][1]]
			team, piece = @board_matrix[origin[0]][origin[1]].to_s.split("")
			if team != nil
				move_ok = @validators[piece].new(self).check_move?(team, origin, destination)
				move_ok = (move_ok) ? "LEGAL" : "ILLEGAL"
				result_file_write << move_ok
				puts move_ok
			else
				result_file_write << "ILLEGAL"
				puts "ILLEGAL"
			end
		end
		IO.write(@result_filepath, result_file_write.join("\n"))
	end
end