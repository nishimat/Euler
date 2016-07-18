
$partition = Array.new( 1000000+1)
$partition[ 0 ] = 1
$partition[ 1 ] = 1 


def get_partition( n )
	sum = 0
	k = 1
	klist = Array.new
	loop do

		k1 = k
		d1 =  k1 * (3*k1 -1) / 2
		(k1 % 2 == 1) ? f1 = 1 : f1 = -1
		break if d1 > n

		if f1 > 0
			sum += $partition[ n - d1 ]
		else
			sum -= $partition[ n - d1 ]
		end

		k2 = k * (-1)
		d2 =  k2 * (3*k2 -1) / 2 
		(k2 % 2 == 1) ? f2 = 1 : f2 = -1
		break if d2 > n

		if f2 > 0
			sum += $partition[ n - d2 ]
		else
			sum -= $partition[ n - d2 ]
		end

		k += 1
	end
	return sum
end



2.upto( 500000 ){ |n|
	$partition[ n ] = get_partition( n )
	if $partition[ n ] % 1000000 == 0
		puts n
		puts $partition[ n ]
		break
	end

	puts n if n % 10000 == 0
}

