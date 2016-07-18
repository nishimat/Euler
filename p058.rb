require 'prime'

fin = 1 
all = 1 
primenum = 0

n = 2 
loop do
	l = ( n - 1 ) * 2

	p1 = fin + l
	p2 = p1  + l
	p3 = p2  + l
	p4 = p3  + l

	primenum += 1 if Prime.prime?( p1 )
	primenum += 1 if Prime.prime?( p2 )
	primenum += 1 if Prime.prime?( p3 )
	primenum += 1 if Prime.prime?( p4 )

=begin
	p (fin+1..p4)
	primeall += ((fin+1)..p4).to_a.inject(0){|memo,n|
		if Prime.prime?(n)
			puts n
			memo + 1 
		else
			memo
		end
	}
=end	
	all += 4
	#puts "#{2*n-1} all = #{all} num = #{primenum}"
	if primenum * 10 < all 
		puts 2 * n - 1 
		puts "all = #{all} num = #{primenum}"
		break
	end

	fin = p4
	n += 1
end
