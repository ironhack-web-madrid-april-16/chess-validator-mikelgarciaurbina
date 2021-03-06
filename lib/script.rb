require_relative './validators/models/MoveHorVerModule.rb'
require_relative './validators/models/MoveDiagonalModule.rb'

require_relative './validators/Validator.rb'
require_relative './validators/RookValidator.rb'
require_relative './validators/BishopValidator.rb'
require_relative './validators/QueenValidator.rb'
require_relative './validators/KingValidator.rb'
require_relative './validators/PawnValidator.rb'
require_relative './validators/HorseValidator.rb'

require_relative './Board.rb'
require_relative './ReadBoardFile.rb'
require_relative './ReadMovesFile.rb'

require 'pry'

# board_matrix = [
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, :bP, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, :wP, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil]
# ]

# moves = [
# 	[[1,3], [3,3]]
# ]

validators = {
	"R" => RookValidator,
	"N" => HorseValidator,
	"B" => BishopValidator,
	"Q" => QueenValidator,
	"K" => KingValidator,
	"P" => PawnValidator

}

board_matrix = ReadBoardFile.new("./files/simple_board.txt").read_file
moves = ReadMovesFile.new("./files/simple_moves.txt").read_file

board = Board.new(board_matrix, moves, validators, "./files/simple_results.txt").check_all_movies


# board_matrix = ReadBoardFile.new("./files/complex_board.txt").read_file
# moves = ReadMovesFile.new("./files/complex_moves.txt").read_file

# binding.pry

# board = Board.new(board_matrix, moves, validators, "./files/complex_results.txt").check_all_movies