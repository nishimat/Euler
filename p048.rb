p Array.new( 1000 ){ |n| (n+1)**(n+1)}.inject(:+) % 10**10
