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

require 'pry'

# board_matrix = [
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, :bP, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil],
# 	[nil, nil, nil, nil, nil, nil, nil, nil]
# ]

board_matrix = ReadBoardFile.new("./files/simple_board.txt").read_file

binding.pry

a = HorseValidator.new(Board.new(board_matrix))
puts a.check_move?("b" ,[1,3], [3, 2])
puts a.check_move?("b" ,[1,3], [2, 1])
puts a.check_move?("b" ,[1,3], [2, 5])