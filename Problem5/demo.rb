def factorial(num)
	num != 0 ? (num * factorial(num-1)) : 1
end

puts factorial(3)