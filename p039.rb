=begin
	a,b,c
	1) a <= b < c
	2) c < a + b
	3) c = n - (a + b)
		2),3)  n - S < S  i.e. n < 2S  S > n/2 
	a * a + b * b == c * c
=end

pmax_no  = -1
pmax_num = -1

1.upto(1000){ |p|
	num = 0
	1.upto( p / 2 ){ |a|
		a.upto( p - a ){ |b|
			c = p - ( a + b )
			next if a + b <= c
			num += 1 if a*a + b*b == c*c	
		}
	}
	if num > pmax_num
		pmax_num = num
		pmax_no  = p
	end
}
puts "No. #{pmax_no} -> #{pmax_num}"
