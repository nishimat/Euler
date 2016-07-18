


tri = Array.new(100000){ |n| n * ( n  + 1) / 2 }
pen = Array.new(100000){ |n| n * (3*n - 1) / 2 }
hex = Array.new(100000){ |n| n * (2*n - 1)     }

p tri & pen & hex	#=> [0, 1, 40755, 1533776805]
