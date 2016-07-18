require 'csv'


def try_decode( key )
	s = ""
	$data.each_with_index{ |val,i|
		s += (val ^ key[ i % 3]).chr
	}
	s
end

def main
	arrs = CSV.read( 'p059_cipher.txt' )
	$data = arrs[ 0 ].map(&:to_i)
	
	plantext = ""
	('a'.ord .. 'z'.ord ).to_a.repeated_permutation( 3 ){|key|
		plantext = try_decode( key )
		break if plantext =~ /the/ && plantext =~ /have/
	}
	puts plantext.split(//).map{ |i| i.ord }.inject( :+)
end


main
