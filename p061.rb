#
# https://projecteuler.net/problem=61
#
def check_shift( oldset, blist, newset )
	oldset.each{ |n|
		blist.each{ |b|
			if n[ -1 ] % 100 == b / 100
				newset << [ n, b ].flatten
			end
		}
	}
end

lists = Array.new( 6 ){ Array.new }
num   = Array.new
n = 1
loop do
	num[ 0 ] = n * ( n + 1 ) / 2
	num[ 1 ] = n ** 2 
	num[ 2 ] = n * ( 3 * n - 1 ) / 2
	num[ 3 ] = n * ( 2 * n - 1 )
	num[ 4 ] = n * ( 5 * n - 3 ) / 2
	num[ 5 ] = n * ( 3 * n - 2 )

	6.times{ |i|
		if 1000 <= num[ i ] && num[ i ] <= 9999
			lists[ i ] << num[ i ]
		end
	}
	n += 1
	break if num[ 0 ] > 9999
end

t = Array.new( 6 )
(0..5).to_a.permutation( 6 ){ |t0,t1,t2,t3,t4,t5|
	t[0] = t0
	t[1] = t1
	t[2] = t2
	t[3] = t3
	t[4] = t4
	t[5] = t5

	a = lists[ t[ 0 ] ].map{ |e| [e] }
	1.upto( 5 ){|n|
		b = lists[ t[ n ] ]
		c = Array.new
		check_shift( a, b, c )
		a = c.dup	
	}
	a.delete_if{ |e| e[0] / 100 != e[ -1 ] % 100 }
	if a.size > 0
		p a 
		p a.flatten.inject( :+ )
	end
}

#p a.flatten.inject( :+ )
#p lists[ 0 ]
