class ReadMovesFile

	def initialize(filepath)
		@filepath = filepath
	end

	def read_file
		matrix = IO.readlines(@filepath).map do |line|
			read_line(line)
		end
	end

	def read_line(line)
		line.split(" ").map do |position|
			[(position[1].to_i - 8).abs, convert_char_to_index(position[0])]
		end
	end

	def convert_char_to_index(letter)
		case letter
		when "a"
			0
		when "b"
			1
		when "c"
			2
		when "d"
			3
		when "e"
			4
		when "f"
			5
		when "g"
			6
		when "h"
			7
		end
	end
	
end
