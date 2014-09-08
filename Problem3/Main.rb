
## ENORMOUS INPUT TEST##

class Main

	attr_reader :arr_of_input_numbers

	def array_of_input_numbers(test_cases)
		@arr_of_input_numbers = []
		test_cases.times do |;input_num|
		  input_num = gets.chomp.to_i
		  @arr_of_input_numbers << input_num
		end
		@arr_of_input_numbers
	end

	def count(arr, divisor)
		count = 0
		arr.each do |num|
			count+=1 if (num != 0 && num % divisor ==0) 
		end
		count
	end
end

run = Main.new
prompt = gets.chomp
run.array_of_input_numbers(prompt.split(" ")[0].to_i)
run.count(run.arr_of_input_numbers, prompt.split(" ")[1].to_i)
