
var1 = 40

ract1 = Ractor.new var1,name: 'main' do |var|
  puts "Hello, I am Ractor main!"
  var2 = 23 + var
end

puts ract1.name
puts ract1.take