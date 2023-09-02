require "benchmark"

plus = proc { |a| a + a }
sque = proc { |a| a * a }

n = 1_000_000_0

Benchmark.bmbm do |x| 
  x.report(' >> ') do
    n.times do |i|
      (plus >> sque)[i]
    end
  end 

  x.report(' callbak ') do
    n.times do |i| 
      sque[plus[i]]
    end
  end 

end