-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

function isPalind(num)
	local str = tostring(num)
	return str == string.reverse(str)
end

function solution()
	local num = 0
	local tmp = -1
	for i = 1000, 100, -1 do
		for j = 1000 , 100, -1 do
			num = i*j
			if ( isPalind(num) ) then
				if tmp < num then
					tmp = num
				end
			end
		end
	end
	return tmp
end

print(solution())
			
