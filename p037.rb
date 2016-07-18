require 'prime'

count = 0
sum   = 0
n = 11		# the digit that will be checked is 11

loop do
	if Prime.prime?( n )
		k = n.to_s.size

		cont = true
		1.upto( k - 1 ){|i|
			divmodval = 10 ** i
			unless Prime.prime?( n % divmodval ) && Prime.prime?( n / divmodval)
				cont = false
				break
			end
		}
		if cont == false
			n += 2
			next
		end
	
		count += 1
		sum   += n
		puts n
		break if count >= 11
	end
	n += 2
end
puts sum #=> 748317
