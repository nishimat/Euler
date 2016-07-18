

anslist = Array.new
2.upto( 100 ){|b|
	2.upto( 100 ){|a|
		anslist << a ** b
	}
}
#puts anslist.uniq.sort
puts anslist.uniq.size

