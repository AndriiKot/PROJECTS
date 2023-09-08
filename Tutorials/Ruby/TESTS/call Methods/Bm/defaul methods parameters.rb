require 'benchmark'

def m1(a = 0,b = 0) end

def m2(*a) 
	a[0] = a[0] || 0
 	a[1] = a[1] || 0
end

m3 = proc {|a,b| a ||= 0;b ||= 0 }
m3_1 = proc {|a,b| a = a || 0; b = b || 0}
m4 = proc {|a = 0,b = 0|}

               
n = 1_000_000_00 * 3

Benchmark.bm do |x|

x.report('def m1(a = 0,b = 0)'){
	n.times { m1 }
}

# x.report('def m2(*a)'){
# 	n.times { m2 }
# }

# x.report('proc m3_1 a = a || 0...') {
#  	n.times { m3_1[]}
# }

x.report('proc m3 a ||= 0...') {
 	n.times { m3[]}
}

x.report('proc m4 |a = 0,b = 0|'){
	n.times { m4[]}
}
end
