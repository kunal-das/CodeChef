def get_numbers(user_input)
	arr = []
	user_input.times do |;input_num|
		input_num = gets.chomp.to_i
		arr << factorial(input_num)
	end
	puts arr
end

def factorial(num)
	num == 0 ? 1 : num * factorial(num-1)
end

user_input = gets.to_i
get_numbers(user_input)