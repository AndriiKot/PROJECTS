require 'benchmark'

class Thing
    def square(n) = n * n
    def plus(n) = n + n
end

meth1 = Thing.new.method(:square)
meth2 = Thing.new.method('plus')

array = *1..10

n = 1_000_000_0

Benchmark.bm do |x|

x.report('meth1[meth2[i]]'){
  n.times do 
    array.each do |i|
      meth1[meth2[i]]
    end
  end
}

x.report('test with variables'){
  n.times do 
    array.each do |i|
      plus = meth2[i]
      meth1[plus]
    end
  end
}

x.report('original'){
  n.times do 
    array.each do |i|
      plus = i + i 
      plus *= plus
    end
  end
}

end
