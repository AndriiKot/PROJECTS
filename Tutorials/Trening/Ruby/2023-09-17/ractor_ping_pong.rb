
server = Ractor.new do 
  puts "Server start: #{self.inspect}"
end

client = Ractor.new(server) do  |server|
   puts "Client strat: #{self.inspect}"
end

p server
p client