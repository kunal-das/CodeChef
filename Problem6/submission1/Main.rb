
## HOLES IN THE TEXT ##

class Main

	attr_reader :arr_of_holes
	
	def initialize
		@arr_of_holes = []
	end

	def get_string(no_of_times)
		1.upto(no_of_times) do
			string_input = gets.chomp
			count_holes(string_input)
		end
		puts arr_of_holes
	end
	def count_holes(word)
		count = 0
		word.each_char do |char|
			if ["A","D","O","P","Q","R"].include?(char)
				count += 1
			elsif char == "B"
				count += 2
			end
		end
		@arr_of_holes << count
	end
end

run = Main.new
test_cases = gets.chomp.to_i
run.get_string(test_cases)
