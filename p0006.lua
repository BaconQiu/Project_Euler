--[[
The sum of the squares of the first ten natural numbers is,
	12 + 22 + ... + 102 = 385
	The square of the sum of the first ten natural numbers is,
	(1 + 2 + ... + 10)2 = 552 = 3025
	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
]]--

function solution(num)
	local sum  = num*(num+1)*(2*num+1)/6  --平方和公式
	local sum2 = num*(num+1)/2            
	return (sum2*sum2)-sum
end

print(solution(10))
print(solution(100))
