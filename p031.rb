=begin

n�� k��ޖڂ܂ł̃R�C���Ŏx�������ł��� d[k][n]
 1) k-1 �܂ł̎�ނŎx�������ł��鐔    d[k-1][n]
 2) k��ޖڂ�(�K��)�g���Ďx�������ł��� d[k][n-c[k]]+1
	
=end

max = 200 
$coin = [1,2,5,10,20,50,100,200]					# ki = 0..c.size -1
$dp   = Array.new( $coin.size ){ Array.new(max+1) } #

0.upto( $coin.size - 1 ){ |ki|
	$dp[ ki ][ 0 ] = 1
}

0.upto( $coin.size - 1 ){ |ki|
	1.upto( max ){ |n|
		if ki == 0
			$dp[ ki ][ n ] = 1
		else
			c1 = $dp[ki - 1][ n ] 
			if n >= $coin[ ki ]
				c1 += $dp[ ki ][ n - $coin[ ki ]]
			end
			$dp[ ki ][ n ] = c1
		end
	}
}
p $dp[ $coin.size - 1 ][ max ]	#=>73682
