require 'benchmark'

n = 100_000_000

Benchmark.bm(7) do |x|
  x.report(".raplace") {n.times do str = "New string 1"; str.replace "New string 2" end}
  x.report(".new string") {n.times do str = "New string 1"; str = "New string 2" end}
end