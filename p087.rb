require 'prime'

def main
	maxval     = 50000000
	r2maxval = Math.sqrt( maxval )   + 1 
	r3maxval = Math.cbrt( maxval )   + 1
	r4maxval = Math.sqrt( r2maxval ) + 1

	list2 = Array.new
	list3 = Array.new
	list4 = Array.new

	2.upto( r2maxval ){ |n|
		if Prime.prime?( n )
			list2 << n ** 2
			list3 << n ** 3 if n <= r3maxval 
			list4 << n ** 4 if n <= r4maxval 
		end
	}

	anslist2 = Array.new
	anslist = list2.product( list3, list4 )
	anslist.each{ |e|
		anslist2 << e.inject( :+ )
	}
	p anslist2.uniq.sort.delete_if{ |n| n >= maxval }.size #=>109734
end

start_time = Time.now
main
puts "#{Time.now - start_time}"
