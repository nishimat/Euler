require 'prime'


def phi( number )

	phi = number
	pd = Prime.prime_division( number )
	pd.each{ |e|
		phi /= e[ 0 ]
		phi *= (e[ 0 ] - 1)
	}
	return phi
end

def main
	sum = 0
	maxval = 1000000
	2.upto( maxval ){ |n|
		p  = phi( n )
		sum += p
		puts n if n % 10000 == 0
	}
	puts sum	#=>303963552391
end

start_time = Time.now
main
puts "#{Time.now-start_time}"


