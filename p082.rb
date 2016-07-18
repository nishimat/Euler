require 'csv'

=begin
list = [
	[131,673,234,103,18],
	[201,96,342,965,150],
	[630,803,746,422,111],
	[537,699,497,121,956],
	[805,732,524,37,331]
]	
=end
list   = CSV.read( 'p082_matrix.txt' ).map{ |e| e.map( &:to_i ) } 

datasize = list.size
weight      =  Array.new( datasize ){ |y| Array.new( datasize){ |x| list[ y ][ x ]}}
temp_weight =  Array.new( datasize ){ |y| Array.new( datasize){ |x| list[ y ][ x ]}}

# (  x, y ) cuurent position
# (x+1, yt) goal

(datasize-2).downto( 0 ){ |x|
	0.upto( datasize - 1 ){ |y|
		min = 10000000000
		0.upto( datasize - 1 ){ |yt|
			if yt < y 
				w  = weight[ yt ][ x + 1 ]
				yt.upto( y ){ |k|
					w += weight[ k ][ x ]				
				}
			elsif yt == y
				w  = weight[ y ][ x + 1 ]
				w += weight[ y ][ x ]
			else	# y < yt
				w = weight[ yt ][ x + 1 ]
				y.upto( yt ){ |k|
					w += weight[ k ][ x ]				
				}
			end
			min = w if min > w
		}
		temp_weight[ y ][ x ] = min
	}
	0.upto( datasize - 1 ){|y|
		weight[ y ][ x ] = temp_weight[ y ][ x ]
	}
}
#weight.each{ |e| p e }
p Array.new( datasize ){|idx| weight[ idx ][ 0 ]}.min
	
