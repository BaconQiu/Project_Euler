-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

function find_sum_below_num(num)
	local sum = 0

	for i = 0,num-1,3 do
		sum = sum+i
	end

	for i = 0,num-1,5 do
		sum = sum+i
	end

	return sum
end


print(find_sum_below_num(10))
print(find_sum_below_num(1000))
