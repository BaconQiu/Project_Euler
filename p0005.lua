-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- solution: gcd(x,y)*lcm(x.y) = x*y

function gcd(x,y)
	if x%y == 0 then
		return y
	else
		return gcd(y, math.floor(x%y))
	end
end

function lcm(x,y)
	return x*y/gcd(x,y)
end

function solution(num)
	local rs = 1
	for i = 1 ,num do
		rs = lcm(i, rs)
	end
	return rs
end

print(solution(10))
print(solution(20))


