require 'benchmark'

n = 100_000_0000
str = "New string 1"
str2 = :"New string 3"

Benchmark.bm do |x|
 x.report(".raplace") {n.times do str.replace "New string 2" end}  
 x.report(".new string") {n.times do str = "New string 1"; str = "New string 2" end}
 x.report("Symbol") { n.times do str2 = :"New string 4" end }
end