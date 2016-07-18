require 'prime'

oddcomp = 9
loop do 
	unless Prime.prime?( oddcomp )
		n = 1
		found = false 
		while (left = oddcomp - 2 * n * n) > 0
			if Prime.prime?( left )
				found = true 
				break
			end
			n += 1
		end
		break unless found
	end
	oddcomp += 2
end
puts oddcomp	#=> 5777
