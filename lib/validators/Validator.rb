class Validator
	attr_reader :board
	def initialize(board)
		@board = board
	end

	def end_pos_free?(destination)
		@board.are_piece_in?(destination[0], destination[1])
	end
end