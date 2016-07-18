=begin
	f( n ) = n^2 + a * n + b

n=0  f(0) = b             : b should be a prime number.
n=2  f(2) = 4 + 2 * a + b : b should be a odd number.
n=1  f(1) = 1 + b + a     : b is odd. a should be a odd number

=end

require 'prime'
$primelist = Array.new
#$primelist << 2

def isprime( n )
	sqrtn = Math.sqrt( n )
	$primelist.each{ |p|
		return true  if p > sqrtn + 1
		return false if n % p == 0
	}
	return true
end

def checkprimeseq( a, b )
	n = 0
	while Prime.prime?( n * n + n * a + b )
		n += 1
	end
	return n
end

3.upto( 1000 ){|n|
	if isprime( n ) 
		$primelist << n
	end
	n += 2
}

max = -1
savea = 0
saveb = 0
$primelist.each{|b|
	a = -999 
	while a < 1000
		n = checkprimeseq( a, b )	
		if n > max
			max = n 
			savea = a
			saveb = b
		end
		a += 2
	end
}
$primelist.each{|b|
	a = -999 
	while a < 1000
		n = checkprimeseq( a, -b )	
		if n > max
			max = n 
			savea = a
			saveb = -b
		end
		a += 2
	end
}
puts "#{max} a=#{savea} b=#{saveb}"
puts savea * saveb 

