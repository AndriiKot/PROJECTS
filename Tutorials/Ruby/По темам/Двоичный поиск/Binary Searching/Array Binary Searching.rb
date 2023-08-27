def myblock = puts "\n","=" * 55,"\n"

# Заметки не используй знак меньше !!!

array = [11,22,31,32,32.5,33,55,77]

value_element_1 = array.bsearch { |element| element > 22  }
value_element_2 = array.bsearch { |element| element > 100 }

p value_element_1,value_element_2


myblock
a = [0, 4, 7, 10, 12]
p a.bsearch {|x| x >= 4 }, # => 4
a.bsearch {|x| x >= 6 }, # => 7
a.bsearch {|x| x >= -1 }, # => 0
a.bsearch {|x| x >= 100 } # => nil

myblock
a = [0, 4, 7, 10, 12]
p a.bsearch {|x| x > 4 }, # => 4
a.bsearch {|x| x > 6 }, # => 7
a.bsearch {|x| x > -1 }, # => 0
a.bsearch {|x| x > 100 } # => nil

