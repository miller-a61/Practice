require 'prime'

done = false
check = 999

while done == false
	x = check.to_s
	if check.prime? && x[0] == x[-1]
		p check
		done = true
	end
	check -= 1
end
