def tsort(tests)
	sorted_array = Array.new(1000001){0}
	1.upto(tests) do
		input_num = gets.chomp.to_i
		sorted_array[input_num] += 1
	end
	#puts sorted_array.sort!
	sorted_array.each_index {|index| puts index if sorted_array[index] != 0}
end

#puts "enter the number of test cases"
test_cases = gets.chomp.to_i
tsort(test_cases)
