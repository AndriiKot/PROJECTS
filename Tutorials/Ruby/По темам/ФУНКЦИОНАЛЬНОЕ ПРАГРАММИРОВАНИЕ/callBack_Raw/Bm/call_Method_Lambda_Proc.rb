require "benchmark"

plus = proc { |a| a + a }
sque = proc { |a| a * a }

plusL = lambda { |a| a + a }
squeL = lambda { |a| a * a }

def meth1(a) = a + a
def meth2(a) = a * a

classMeth1 = method(:meth1)
classMeth2  = method(:meth2)


n = 1_000_000_0

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
 
  x.report(' << Method') do
    n.times do |i| 
      (method(:meth2) << method(:meth1))[i]
    end
  end 

  x.report(' >> Method ') do
    n.times do |i|
      (method(:meth1) >> method(:meth2))[i]
    end
  end

  x.report(' << Method') do
    n.times do |i| 
      (classMeth2 << classMeth1)[i]
    end
  end 

  x.report(' >> Method ') do
    n.times do |i|
      (classMeth1 >> classMeth2)[i]
    end
  end 
 
end

















