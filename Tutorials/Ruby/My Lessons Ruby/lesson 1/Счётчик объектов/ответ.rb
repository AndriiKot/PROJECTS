
class A
end


a = A.new
b = A.new
c = A.new

	
p ObjectSpace.each_object(A) {}

a,b,c = nil, nil, nil
p a,b,c

p ObjectSpace.each_object(A) {} # !!! 3

GC.start

p ObjectSpace.each_object(A) {}   # !!! 0



