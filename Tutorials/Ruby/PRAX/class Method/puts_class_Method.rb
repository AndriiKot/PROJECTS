
class Thing
    def square(n) = n * n
end

meth1 = Thing.new.method(:square)
meth2 = Thing.new.method('square')

array = Array(1..10)
array2 = *1..10

p array.collect(&meth2)
p array.collect(&Thing.new.method('square'))

array.collect do |i|
    p meth2[i]
end