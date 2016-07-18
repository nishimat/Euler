
def	multi( multi, n )
	strnum = ""	
	1.upto( n ){ |i|
		strnum += (multi * i).to_s
	}
	strnum.to_i
end

def pandigital?( n )
	s_n = n.to_s
	return false if s_n.size != 9
	s_n.split(//).uniq.delete_if{ |i| i == "0"}.size == 9	
	#s_n.split(//).uniq.size == 9	
end

max = 0
6.downto( 2 ) do |n|
	k = 1	
	loop do
		val = multi( k, n)
		#p val
		break if val> 10 ** 9

		if pandigital?( val )
			max = val if max < val
		end
		k += 1
	end
end
p max
