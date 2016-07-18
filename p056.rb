
max = -1
savea = -1
saveb = -1

1.upto( 99 ){|a|
	1.upto( 99 ){ |b|
		sum = (a ** b).to_s.split(//).map(&:to_i).inject(:+)
		if max < sum
			max = sum
			savea = a
			saveb = b
		end

	}
}
puts "#{max} (a=#{savea},b=#{saveb})"
