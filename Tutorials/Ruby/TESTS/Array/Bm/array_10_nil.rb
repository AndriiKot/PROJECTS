require 'benchmark'

               
n = 1_000_000_0

Benchmark.bm do |x|

x.report('arr2 = Array.new(10) '){       
	n.times { arr2 = Array.new(10)  } 
}

x.report('arr2 = []; 10.times { arr2 << nil }'){       
	n.times { arr2 = []; 10.times { arr2 << nil } } 
}

x.report('arr2 = []; 10.times { arr2.push(nil) }'){       
	n.times { arr2 = []; 10.times { arr2.push(nil) } } 
}

end

