require 'benchmark'

               
n = 1_000_000_0

Benchmark.bm do |x|

x.report('arr1 = Array.new(10) { [] } '){
	n.times { arr1 = Array.new(10) { [] } }
}

x.report('arr2 = Array.new(10) { Array.new } '){       
	n.times { arr2 = Array.new(10) { Array.new } } 
}


x.report(' 10.times.map { [] } '){       
	n.times { 10.times.map { [] } }
}

x.report(' 10.times.map { Array.new } '){       
	n.times { 10.times.map { Array.new } }
}

end
