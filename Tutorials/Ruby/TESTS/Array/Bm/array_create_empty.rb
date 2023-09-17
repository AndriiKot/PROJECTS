require 'benchmark'

               
n = 1_000_000_00

Benchmark.bm do |x|

x.report('arr1 = [] '){
	n.times { arr1 = 0..9 }
}

x.report('arr1 = Array.new(10) {} '){       
	n.times { arr2 = Array.new(10) {|i| i }} 
}

x.report('Array([]) '){       
	n.times { arr1 = Array(0..9) }
}

end
