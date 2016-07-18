#
#
def getk( n )
	return 2 if n == 0

	m = n % 3
	if m == 1 
		return 1
	elsif m == 2
		return 2 * (( n / 3 ) + 1)
	else
		return 1
	end
end

def main
	a = Rational( 0, 1)
	99.downto( 1 ){ |n|
		a = 1 / (a + getk( n ))
	}
	a += getk( 0 )
	
	p a.numerator.to_s.split(//).map(&:to_i).inject(:+) #=> 272
	p a.to_f
end

main
