require 'csv'
csvlist = CSV.read( "p022_names.txt" )
nameslist = csvlist[ 0 ].sort
sum = 0
nameslist.each_with_index{ |name,idx|
	worth = name.split(//).inject( 0 ){ |memo,c| memo + (c.ord - 'A'.ord + 1)}
	sum += (worth * (idx + 1 ))
}
puts sum
