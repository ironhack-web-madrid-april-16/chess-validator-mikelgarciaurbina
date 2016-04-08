class ReadBoardFile

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
			if position == "--"
				nil
			else
				position.to_sym
			end
		end
	end
	
end
