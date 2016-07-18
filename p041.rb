require 'prime'

max = -1
2.upto( 9 ){ |n|
	(1..n).to_a.permutation(n){|list|
		pandigital = list.inject{|memo,n| memo*10+n }
#		p pandigital
		if Prime.prime?(pandigital)
			max = pandigital if max < pandigital
		end
	}
}
p max
