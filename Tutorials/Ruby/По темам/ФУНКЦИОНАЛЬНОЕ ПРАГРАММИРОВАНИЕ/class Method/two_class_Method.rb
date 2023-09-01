
class Thing
    def square(n) = n * n
    def plus(n) = n + n
end

meth1 = Thing.new.method(:square)
meth2 = Thing.new.method('plus')

array = *1..10

# p array.collect(&meth2)
# p array.collect(&Thing.new.method('square'))

array.collect do |i|
    p meth1[meth2[i]]
end

array.collect do |i|
  p (meth1 << meth2)[i]
end

p array

#array.collect(&meth2).each(&method(:puts))