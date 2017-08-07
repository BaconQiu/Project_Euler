--The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--Find the sum of all the primes below two million.

function isPrimer(n)
	if n%2 == 0 then
		return n==2
	elseif n%3 == 0 then
		return n==3
	elseif n%5 == 0 then
		return n==5
	else
		local i=7
		while i*i < n do
			if n%i==0 then 
				return false
			end	
			i = i+2
		end
		return true
	end
end

function solution(below_num)
	local sum = 0
	for i = 2, below_num do
		if isPrimer(i) then
			sum = sum + i
		end
	end
	return sum
end

print(solution(10))
print(solution(2000000))
