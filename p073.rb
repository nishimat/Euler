
# shoudl be a >=b 
#
def gcm( a, b )
	loop do
		return a if b == 0
		m = a % b
		t = b; b = m; a = t 
	end
end

maxval= 12000
#maxval = 8
sum = 0
2.upto( maxval ){ |d|
	#s = ( d % 3 == 0 ) ? (d / 3 + 1) : (d / 3)
	s = d / 3 + 1
	e = ( d % 2 == 0 ) ? (d / 2 - 1) : (d / 2)

	s.upto( e ){|i|
		if gcm( d,i ) == 1
#			puts "#{i}/#{d}"
			sum += 1
		end
	}
	
	if d % 100 == 0
		puts "d = #{d} sum = #{sum}"
	end
}
p sum
