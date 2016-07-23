def max( a, b )
	( a > b ) ? a : b
end
$data = Array.new
File.open('p067_triangle.txt') do |file|
	file.each_line do |line|
		$data << line.split(' ').map{|n| n.to_i }
	end
end

1.upto($data.length - 1){ |i|
	# the size of $data[ i ] = i + 1
	0.upto( i ){ |j|
		if j == 0
			$data[ i ][ j ] += $data[ i - 1 ][ 0 ]
		elsif j == i 
			$data[ i ][ j ] += $data[ i - 1 ][ i - 1 ]
		else
			c1 = $data[ i - 1 ][ j - 1 ]
			c2 = $data[ i - 1 ][ j ]
			$data[ i ][ j ] += max( c1, c2 )
		end
	}
}

puts $data[ $data.length - 1].max #=> 7273
