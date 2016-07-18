def fact( n )
	return 1 if n == 0
	f = 1
	1.upto( n ){ |i|
		f *= i
	}
	return f
end

count = 0
1.upto( 100 ){ |n|
	0.upto( n ){ |r|
		c = fact( n ) / (fact( n - r ) * fact( r ))	
		count += 1 if c > 1000000
	}
}
puts count
