require 'prime'

# the argument p should be a prime number
def check_circular( p )

	return true if p < 10 

	ary_p = p.to_s.split(//).map(&:to_i)

	# when the number contains the even digit (inclued '0')
	# return false.
	ary_p.each{ |n|
		return false if n % 2 == 0
		return false if n == 5
	}

	1.upto( ary_p.size - 1 ){
		first = ary_p.shift
		ary_p << first
		newval = ary_p.inject{|memo,n| memo * 10 + n }
		#return false if newval < p	# the value is already checked.
		return false unless Prime.prime?( newval )	
	}
	return true
end

num = 0
2.upto( 1000000 ){ |p|
	if Prime.prime?( p )
		num += 1 if check_circular( p )
		#puts p if check_circular( p )
	end
}
puts num
