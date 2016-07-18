nums = Array.new(10){|idx| idx }
pow5 = Array.new(10){|idx| idx ** 5 }

sum = 0
nums.repeated_permutation( 7 ){|m,l,a,b,c,d,e|
	n1 = 1000000 * m+ 100000 * l +10000 * a + 1000 * b + 100 * c + 10 * d + e
	n2 = pow5[ m ] + pow5[ l ] +pow5[ a ] + pow5[ b ] + pow5[ c ] + pow5[ d ] + pow5[ e ]
	if n1 == n2 #&& n1 >= 10000
		p [m, l,a,b,c,d,e]
		puts n1
		sum += n1
	end
}
puts sum

