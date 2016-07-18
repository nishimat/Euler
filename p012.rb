require 'prime'
def num_of_divisors( n )
	divnum = 1 
	Prime.prime_division( n ).each{ |a|
		divnum *= (a[ 1 ] + 1)
	}
	return divnum
end

n = 1
tri = n
while true
	#puts tri
	break if num_of_divisors( tri ) > 500 
	n += 1
	tri += n
end
puts tri #=>76576500
p Prime.prime_division( tri )

