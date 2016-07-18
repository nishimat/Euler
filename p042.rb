require 'csv'

csvdata = CSV.read("p042_words.txt")
name_list = csvdata[ 0 ]
count = 0
name_list.each{ |strname|
	val = strname.split(//).map{ |c| c.ord - 'A'.ord + 1 }.inject(:+)
	chkval = Math.sqrt( val * 2 ).to_i
	count += 1 if val * 2 == chkval * (chkval + 1)
}
puts count

