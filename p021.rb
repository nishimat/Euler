require 'prime'
def divisor( n ) 
	list = Prime.prime_division( n ).map{ |e|
		Array.new( e[ 1 ] + 1 ){ |idx| e[ 0 ] ** idx }
	}
	first, *rest = list
	first.product( *rest ).map{ |e|
		e.inject( :* )
	}.sort
end

plist = Array.new( 10000 ){ |idx|
	if idx == 0 || idx == 1
		-1	
	else
		divisor( idx ).inject( :+ ) - idx
	end
}

sum = 0
2.upto( 10000-1 ){|n|
	a = plist[ n ]
	b = plist[ a ]
	if n == b && n != a 
		printf( "(%d,%d)\n", n, plist[ n ] )
		sum += n
	end
}
puts sum

