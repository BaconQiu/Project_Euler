--A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
--  a2 + b2 = c2
--  For example, 32 + 42 = 9 + 16 = 25 = 52.
--  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
--  Find the product abc.


function solution(num)
	for a = 1, num do
		for b = a+1, num do
			local c = num - a - b
			if ( a*a + b*b == c*c ) then
				return a*b*c
			end
		end
	end
	return -1
end


print(solution(1000))
