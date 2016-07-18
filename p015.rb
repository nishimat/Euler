# (20+20)C20

def fact( n )
	prod = 1
	2.upto( n ){ |i|
		prod *= i
	}
	return prod
end

def combination( n, m )
	fact( n ) / fact( m ) / fact( n - m )
end

p combination( 40, 20 )	#=>137846528820
