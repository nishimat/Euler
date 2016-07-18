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
	max = -1.0
	ans = -1
	maxval = 1000000

	2.upto( maxval ){ |n|
		p  = phi( n )
		np = Rational( n, p).to_f
		if max < np
			max = np
			ans = n 
		end

	}
	puts "max = #{max} ans = #{ans}"
	p max
	p ans	#=> 510510
end

start_time = Time.now
main
#p Prime.prime_division( 510510 )
puts "#{Time.now-start_time}"

