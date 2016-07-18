
$chains = Hash.new

def collatz( target )
	n = target
	path_num = 0
	while n != 1
		if n % 2 == 0
			n = n / 2
		else
			n = 3 * n + 1
		end
		path_num += 1
	end
	return path_num + 1
end

def num_of_collatz_path( target )
	n = target
	path_num = 0
	while n != 1
		if $chains[ n ]  
			$chains[ target ] = path_num + $chains[ n ] 
			return $chains[ target ]
		end
		if n % 2 == 0
			n = n / 2
		else
			n = 3 * n + 1
		end
		path_num += 1
	end
	$chains[ target ] = path_num + 1
	return $chains[ target ]
end

start = -1
max   = -1
2.upto( 1000000){ |n|
	path = num_of_collatz_path( n )

	if max < path
		max  = path
		start = n
	end

}
puts start #=>837799
#puts $chains[ start ]
#p $chains
#puts collatz( start )


