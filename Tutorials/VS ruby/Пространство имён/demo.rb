X = 3

print self.class.constants
puts "=" * 33

p self.class.constants.include? :X
p self.class.const_defined? :X

arr = self.class.constants.select {|const| const == :X}
p arr