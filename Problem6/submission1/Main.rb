
## HOLES IN THE TEXT ##

class Main

	attr_reader :arr_of_words

	def array_of_words(test_cases)
		@arr_of_words = []
		test_cases.times do |;input_word|
			input_word = gets.chomp
			@arr_of_words << input_word
		end
		@arr_of_words
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
		count
	end

	def array_of_hole_counts(arr_of_words)
		arr_of_hole_counts = []
		arr_of_words.each do |word|
			arr_of_hole_counts << count_holes(word)
		end
		arr_of_hole_counts
	end
end

run = Main.new
test_cases = gets.chomp.to_i
run.array_of_words(test_cases)
puts run.array_of_hole_counts(run.arr_of_words)
