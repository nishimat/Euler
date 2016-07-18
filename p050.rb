require 'prime'

list = Array.new
2.upto( 1000000 - 1 ){ |n|
	list << n if Prime.prime?( n )
}
maxprime = list[ -1 ]
#p list
p list.size/2

# when the consecutive prime doesn't contain "2", the length should be odd.

maxlen = list.size / 2 
exitflag = false
len = maxlen
while len <= maxlen && exitflag == false
	1.upto( list.size - 1 ){ |pos|
		sum = list[pos, len].inject( :+ )
		if sum > maxprime
			break
		end

		if Prime.prime?( sum )
			puts sum
			p list[ pos, len ]
			puts len
			exitflag = true
			break
		end
	}
	len -= 2
end

if exitflag 
	sum2 = list[ 0, len + 1 ].inject( :+ )
	if Prime.prime?( sum2 )
		puts sum2
		p list[ pos,len]
		puts len + 1
	end
end

exit
