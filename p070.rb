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

def check( a, b )
	list_a = a.to_s.split(//).map( &:to_i ).sort
	list_b = b.to_s.split(//).map( &:to_i ).sort

	return list_a == list_b
end

def main
	min = 100000000
	ans = -1
	maxval = 10 ** 7 - 1
	2.upto( maxval ){ |n|
		np  = phi( n )
		if check( n, np )
			ratio = n.to_f / np.to_f
			if ratio < min
				min  = ratio
				ans  = n
			end
			#puts "n=#{n} phi=#{np} ratio=#{ratio} min= #{min} ans = #{ans}"
		end
		puts n if n % 10000 == 0
	}
	puts ans	#=>	8319823
end

start_time = Time.now
main
#p phi( 783169 )
puts "#{Time.now-start_time}"

