#https://projecteuler.net/problem=99
require 'csv'

list = CSV.read( 'p099_base_exp.txt' )
qlist = list.map{ |e| e.map( &:to_i )}
max   = -1
index = -1
qlist.each_with_index{ |e,i|
	a = e[ 0 ]
	b = e[ 1 ]
	f = b * 1.0 * Math.log10( a )
	if max < f
		max = f
		index = i
	end
}
p qlist[ index ]
p index + 1 #=>709

