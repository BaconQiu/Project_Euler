-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

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

function solution(nth)
	local count = 0
	local num   = 2

	while true do
		if isPrimer(num) then
			count = count + 1
		end
		if count == nth then
			break
		end
		num = num + 1 
	end
	return num
end
		
print(solution(6))
print(solution(10001))
