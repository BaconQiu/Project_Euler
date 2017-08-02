-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

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

function solution(num)
	local tmp = 2
	local max = math.floor(math.sqrt(num))
	for i = 2, max do
		if num % i == 0 then
			if isPrimer(i) then
				if tmp < i then
					tmp = i
				end
			end
		end
	end
	return tmp
end

print(solution(13195))
print(solution(600851475143))


	

