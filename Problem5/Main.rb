
## SMALL FACTORIALS ##

class Main
	attr_reader :arr
	def get_numbers(user_input)
	@arr = []
		user_input.times do |;input_num|
		input_num = gets.chomp.to_i
		arr << factorial(input_num)
		end
		puts arr
	end

	def factorial(num)
		num == 0 ? 1 : num * factorial(num-1)
	end
end

run = Main.new
user_input = gets.to_i
run.get_numbers(user_input)
