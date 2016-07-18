#
#https://en.wikipedia.org/wiki/Partition_(number_theory)
#
#p(n) = É∞(kÅÇ0) (-1)^(k-1)p( n - k(3k-1)/2) : k=1,-1,2,-2,3,-3...
#p(0) =1, p(n) = 0 (n < 0) 

=begin
$partition = Array.new( 200 )
$partition[ 0 ] = 1
$partition[ 1 ] = 1 


def get_partition( n )
	sum = 0
	k = 1
	klist = Array.new
	loop do

		k1 = k
		d1 =  k1 * (3*k1 -1) / 2
		(k1 % 2 == 1) ? f1 = 1 : f1 = -1
		break if d1 > n

		if f1 > 0
			sum += $partition[ n - d1 ]
		else
			sum -= $partition[ n - d1 ]
		end

		k2 = k * (-1)
		d2 =  k2 * (3*k2 -1) / 2 
		(k2 % 2 == 1) ? f2 = 1 : f2 = -1
		break if d2 > n

		if f2 > 0
			sum += $partition[ n - d2 ]
		else
			sum -= $partition[ n - d2 ]
		end

		k += 1
	end
	return sum
end



2.upto( 100 ){ |n|
	$partition[ n ] = get_partition( n )
}

$partition.each_with_index{ |e,i|
	puts "p(#{i}) -> #{e}" if i > 0
}
=end

TARGET=100
WAYS={}
# s: the sum the terms add up to
# m: max value for any term
def ways(s,m)
  return 1 if s == 0
  return 0 if m == 0
  return 1 if m == 1
  WAYS[[s,m]] ||= ways(s,m-1) + ways(s-m,[s-m,m].min)
end
puts ways(TARGET, TARGET-1)

#http://techtipshoge.blogspot.jp/2011/01/blog-post_28.html
