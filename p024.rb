
def factory( n )
	f = 1
	1.upto( n ){ |i|
		f *= i
	}
	return f
end

target = 1000000 - 1
numlist = Array.new( 10 ){ |idx| idx }
anslist = Array.new

9.downto( 0 ){|n|
	fact = factory( n )
	d = target / fact
	target -=  fact * d
	anslist << numlist[ d ]
	numlist.delete_at( d )

	#puts "#{fact},#{target},#{d}"
	#p anslist
	#p numlist

}
p anslist
#puts anslist.inject( 0 ){ |memo, n| memo * 10 + n }


