print 'Enter int: '
int = gets.strip

puts Integer(int,exception: false) ? int : "#{int.inspect} не цифра!!!"
