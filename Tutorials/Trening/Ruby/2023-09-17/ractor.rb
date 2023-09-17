
var1 = 40

ract1 = Ractor.new var1,name: 'main' do |var|
  puts "Hello, I am Ractor main!"
  var2 = 23 + var
end

ract2 = Ractor.new name: 'ractor-2' do 
  var2 = receive
  var2 = var2 + 12
end

puts "Ractor: ractor-2"
puts ract2.send var1
puts ract2.take   

