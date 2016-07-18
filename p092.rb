
$memohash = Hash.new
def nextval( n )
	 list = n.to_s.split(//).map(&:to_i) .inject(0){ |memo,e| memo + e **2 }
end

def check89( n )
#	return $memohash[ n ] if $memohash[ n ]	

	t = n
	while t != 1 && t != 89
		t = nextval( t )
	end
#	$memohash[ n ] =  (n== 89)
	(n == 89)
end

count = 0
1.upto( 10000000 -1 ) do |n|
	count += 1 if check89( n )
	puts n if n % 10000 == 0 
end
p count


#8581146
