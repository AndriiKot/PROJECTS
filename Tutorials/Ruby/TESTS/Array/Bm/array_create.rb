require 'benchmark'
               
n = 1_000_000_00

Benchmark.bm do |x|

x.report('arr1 = 11, 22'){
	n.times { arr1 = 11,22 }
}

x.report('arr1 = [11,22] '){       
	n.times { arr1 = [11,22] } 
}

x.report('Array([11,22])'){       
	n.times { arr1 = Array([11, 22]) }
}

end
