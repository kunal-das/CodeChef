
## SMALL FACTORIALS ##

class Main

	attr_reader :test_case, :arr_of_input_numbers

	def get_numbers(num)
		@arr_of_input_numbers = []
		num.times do |;input_num|
		  input_num = gets.chomp.to_i
		  @arr_of_input_numbers << input_num
		end
		@arr_of_input_numbers
	end

	def factorial(num)
		num == 0 ? 1 : num * factorial(num-1)
	end

	def array_of_factorial(arr)
		arr_of_factorials = []
		arr.each do |num|
			arr_of_factorials << factorial(num)
		end
		arr_of_factorials
	end
end

run = Main.new
test_case = gets.chomp.to_i
run.get_numbers(test_case)
puts run.array_of_factorial(run.arr_of_input_numbers)
