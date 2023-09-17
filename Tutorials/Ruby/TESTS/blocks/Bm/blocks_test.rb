require 'benchmark'

var1 = 11
var2 = 22

arr1 = [var1, var2]
               
n = 1_000_000_00 

Benchmark.bm do |x|

x.report('each{|el| el.inspect }'){
	n.times { arr1.each { |el| el.inspect }}
}

x.report('each(&:inspect)'){       
	n.times { arr1.each(&:inspect) }
}

end
