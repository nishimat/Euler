
def check1( a, b, c )
	s    = a.to_s + b.to_s + c.to_s
	test = s.split(//).map(&:to_i).sort
	return true if test.size > 9
	return false
end
def check( a, b, c )
	s    = a.to_s + b.to_s + c.to_s
	test = s.split(//).map(&:to_i).sort

	return false if test.size != 9
	return false if test.include?( 0 )
	return false if test.uniq.size != 9
	return true
end

list = []
1.upto(999){|a|
	1.upto( 9999 ){|b|
		c = a * b
		break if check1( a, b, c )
		if check( a, b, c )
			list << c
			puts "#{a}*#{b}=#{c}"
		end
	}
}
puts list.uniq.inject( :+ )
