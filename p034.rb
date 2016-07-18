def factory( n )
	f = 1
	1.upto( n ){ |i|
		f *= i
	}
	return f
end

def factnum( n )
	n.to_s.split(//).map{ |i| factory(i.to_i)}.inject(:+)
end


1.upto( 10000000 ){ |n|
	puts n if n == factnum( n )
}
