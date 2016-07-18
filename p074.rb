

$maxval    = 999999
$nextvals  = Array.new( $maxval+1) # I don't use $nextval[ 0 ]
$nextvalsB = Hash.new

def factory( n )
	return 1 if n == 0
	f = 1
	1.upto( n ){ |i| f *= i }
	return f
end

def nextval( n ) # should be n > 0 (positive integer)
	s = 0
	while n > 0
		r = n % 10
		n = n / 10	
		s += factory( r )
	end
	return s
end

def init
	1.upto( $maxval ){|n|
		$nextvals[ n ] = nextval( n )
	}
end

def chainlength( n )
	list = [] 
	list << n

	loop do
		if n <= $maxval 
			n2 = nextval( n )
		else
			if $nextvalsB[ n ]
				n2 = $nextvalsB[ n ]
			else
				n2 = nextval( n )
				$nextvalsB[ n ] = n2
			end
		end
		break if list.include?( n2 )

		list << n2	
		n = n2
	end

	return list.size
end

def main
	init()
	puts "init completed"
	ans = []
	1.upto( $maxval ){ |n|
		len = chainlength( n )
		ans << n if len == 60

		p n if n % 10000 == 0
	}
	p ans
	p ans.size
end

start_time = Time.now
main
end_time = Time.now
puts "#{end_time - start_time}"
#puts $nextvalsB.size


