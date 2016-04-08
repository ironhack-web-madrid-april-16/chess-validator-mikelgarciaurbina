class Board
	def initialize(board_matrix)
		@board_matrix = board_matrix
	end

	def are_piece_in?(line, column)
		@board_matrix[line][column] == nil
	end
end