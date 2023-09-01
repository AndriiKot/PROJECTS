require 'benchmark'

class Thing
    def square(n) = n * n
    def plus(n) = n + n
end

meth1 = Thing.new.method(:square)
meth2 = Thing.new.method('plus')

array = *1..10

n = 1_000_000

Benchmark.bm do |x|

 x.report('long version'){
  n.times do 
    array.each do |i|
       Thing.new.method(:square)[Thing.new.method('plus')[i]]
    end
  end
}

x.report('(meth1 << meth2)[i]') {
    n.times do
      array.each do |i|
        (meth1 << meth2).call(i)
      end
    end
}

x.report('meth1[meth2[i]]'){
  n.times do 
    array.each do |i|
      meth1[meth2[i]]
    end
  end
}

end
