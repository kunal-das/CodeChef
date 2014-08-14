def count_numbers(lines, divisor)
	count = 0
	for i in 1..lines
		input = gets.to_i
		if (input%divisor==0)
			count += 1
		end
	end
	return count
end
user_inputs = gets.chomp
num_list = user_inputs.split{" "}
line_count = num_list[0]
divisor = num_list[1]
puts count_numbers(line_count.to_i, divisor.to_i)