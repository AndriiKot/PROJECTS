
class Thing
    def square(n) = n * n
end

meth1 = Thing.new.method(:square)
meth2 = Thing.new.method('square')

p meth1.call(6)
p meth1.call 6
p meth1[6]
p meth1.=== 6

p meth2[5]
p meth2.(5)

