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

def sum_of_divisors( n )
	return 1 if n == 1
	divisor( n ).inject( :+ ) - n
end
		


abundant = Array.new
1.upto(28123){ |n|
	s = sum_of_divisors( n )
#	abundant << [n,s] if n < s
	abundant << n if n < s
}
p abundant.size

numlist = Array.new( 28123 + 1, 0 )
abundant.each{ |a|
	abundant.each{ |b|
		numlist[ a + b ] = 1 if a + b <= 28123
	}
}

sum = 0
1.upto( 28123 ){ |n|
	sum += n if numlist[ n ] == 0 
}
#numlist.each_with_index{ |e,i|
#	puts i if e ==  0
#}
puts
puts sum

