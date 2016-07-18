
def isprime( n )
	$primelist.each{ |p|
		next if p == 0
		return false if n % p == 0
	}
	return true
end

def init

	$primelist = Array.new
	$dp        = Hash.new

	$primelist << 0		#dummy $primelist[ 0 ] is not used
	$primelist << 2
	checknum = 3
	while $primelist.size < 100
		$primelist << checknum if isprime( checknum ) 
		checknum += 2
	end

	$dp = Hash.new
	$dp[[1,1]] = 0 
	$dp[[2,1]] = 1
	$dp[[3,1]] = 0
	$dp[[3,2]] = 1 

	puts "init completed"
end

def	main
	init

	n = 4
	loop do
		k = 1
		while n >= $primelist[ k ]

			if k == 1
				p1 = 0
			else
				p1 = $dp[[n, k-1]]
			end

			if n - $primelist[ k ] == 0
				p2 = 1
			elsif n - $primelist[ k ] >= 1 
				i = 0
				until p2 = $dp[ [ n - $primelist[ k ], k - i] ]
					i += 1
				end
			else
				p2 = 0
			end
		
			$dp[ [n,k]] = p1 + p2

			puts "===  dp[ #{n} ,#{k} ] = #{p1 + p2} ==="
			if $dp[ [n,k]] > 5000
					puts n
					exit
			end
			k += 1
		end
		n += 1
	end
end
start_time = Time.now
main
end_time = Time.now
puts "#{end_time - start_time}"

