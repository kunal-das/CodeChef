
##FACTORIAL##

class Main
	
	attr_reader :arr_of_input_numbers

	def array_of_input_numbers(num)
		@arr_of_input_numbers = []
		num.times do |;input_num|
		  input_num = gets.chomp.to_i
		  @arr_of_input_numbers << input_num
		end
		@arr_of_input_numbers
	end

	def trailing_zeroes(num)
		divisor = 5
		@zeroes_count = 0
		while true
			@zeroes_count += num / divisor
			break if divisor*5>num
			divisor = divisor*5
		end
		@zeroes_count
	end

	def returns_array_of_trailing_zeroes(arr)
		array_of_trailing_zeroes = []
		arr.each do | num |
			array_of_trailing_zeroes << trailing_zeroes(num)
		end
		array_of_trailing_zeroes
	end
end

run = Main.new
test_cases = gets.chomp.to_i
run.array_of_input_numbers(test_cases)
puts run.returns_array_of_trailing_zeroes(run.arr_of_input_numbers)
