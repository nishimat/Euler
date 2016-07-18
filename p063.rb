
=begin
beki = 1000
n = 10 ** beki
puts " beki = #{beki} keta = #{Math.log10( n )}"

pmax = ((Math.log(10))/(Math.log(10)-Math.log(9))).to_i
=end

n = 0
1.upto( 22 ){|b|
	1.upto( 9 ){ |a|
		if (a ** b).to_s.size == b
			n += 1
		end
	}
}
puts n
