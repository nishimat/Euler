
def main
	perm = Hash.new

	n = 1
	loop do
		n3     = n ** 3	
		n3list = n3.to_s.split(//).map(&:to_i).sort

		if perm[ n3list ]
			perm[ n3list ] << n3
			if perm[ n3list ].size == 5
				p perm[ n3list ]
				# => [127035954683, 352045367981, 373559126408, 569310543872, 589323567104]
				exit
			end
		else
			perm[ n3list ] = Array.new( 1, n3 )
		end

		n += 1
		puts n if n % 1000 == 0
	end
end

start_time = Time.now
main
end_time = Time.now
puts "#{start_time - end_time}"
