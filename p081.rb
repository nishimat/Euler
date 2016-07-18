require 'csv'

def min( a, b ) ( a < b ) ? a : b end

datacsv = CSV.read( "p081_matrix.txt")
data = datacsv.map{ |a| a.map( &:to_i) }
size = data.size

dp = Array.new( size ){ Array.new( size, 0) }
0.upto( size * 2 - 2 ){ |l|
	0.upto( l ){ |x|
		y = l - x
		next if x >= size || y >= size

		dp[y][x] = data[y][x]
		if x == 0 && y == 0
			;			
		elsif x == 0
			dp[y][x] += dp[y-1][x]
		elsif y == 0
			dp[y][x] += dp[y][x-1]
		else
			dp[y][x] += min(dp[y][x-1],dp[y-1][x])
		end
	}
}
p dp[size-1][size-1]

