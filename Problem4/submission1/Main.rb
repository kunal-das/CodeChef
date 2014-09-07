
##FACTORIAL##

class Main
attr_reader :zeroes_count
def factorial_input(user_input)
	fact_arr = []
	user_input.times do |;input_num|
		input_num = gets.chomp.to_i
		fact_arr << input_num
	end
	fact_arr
end
def trailing_zeroes(arr)
	arr.each do |num|
		divisor = 5
		@zeroes_count = 0
		while true
			@zeroes_count += num / divisor
			break if divisor*5>num
			divisor = divisor*5
		end
		@zeroes_count
		#puts zeroes_count
	end
end
end
run = Main.new
user_input = gets.chomp
arr = run.factorial_input(user_input.to_i)
run.trailing_zeroes(arr)
