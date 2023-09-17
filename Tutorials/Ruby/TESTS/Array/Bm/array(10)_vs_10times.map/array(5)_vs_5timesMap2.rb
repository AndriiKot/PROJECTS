require 'benchmark'

n = (1_000_000_00 * 2);

Benchmark.bm do |x|


x.report('Array.new(n) '){ 
	array1 = Array.new(n) { [] } 
}

x.report('5.times.map'){
	array2 = n.times.map { [] }
}

end
