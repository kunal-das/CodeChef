def get_string(no_of_times)
	1.upto(no_of_times) do 
	string_input = gets.chomp
	count_holes(string_input)
	end	
end

def count_holes(word)
	count = 0
	word.each_char do |char|
		case char
		when "A","D","O","P","Q","R"
			count += 1
		when "B"
			count += 2
		end
	end
	$arr_of_holes << count
end



#puts "enter the number of test cases"
test_cases = gets.chomp.to_i

$arr_of_holes = []
get_string(test_cases)
puts $arr_of_holes
