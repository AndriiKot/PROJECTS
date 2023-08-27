
MAX_VALUE = 10

def event
    MAX_VALUE.times do |i|  
         puts "counter: #{i}, date: #{Time.now}"
    end
end

puts 'Begin'
event() 
puts "The End"

