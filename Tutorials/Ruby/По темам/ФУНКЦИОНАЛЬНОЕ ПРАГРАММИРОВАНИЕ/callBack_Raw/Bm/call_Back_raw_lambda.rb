require "benchmark"

plus = proc { |a| a + a }
sque = proc { |a| a * a }

plusL = lambda { |a| a + a }
squeL = lambda { |a| a * a }


n = 1_000_000

Benchmark.bmbm do |x| 
  x.report(' >> proc ') do
    n.times do |i|
      (plus >> sque)[i]
    end
  end 

  x.report(' << proc ') do
    n.times do |i| 
      (sque << plus)[i]
    end
  end 
  x.report(' >> lambda ') do
    n.times do |i|
      (plusL >> squeL)[i]
    end
  end 

  x.report(' << lambda') do
    n.times do |i| 
      (squeL << plusL)[i]
    end
  end 

end