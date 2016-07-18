
sum1 = 0
sum2 = 0
1.upto( 100 ){ |n|
	sum1 += n * n 
}
s = 0
1.upto( 100 ){ |n|
	s += n
}
sum2 = s * s
puts sum2 - sum1

