
MAX_VALUE = 10

def event
    MAX_VALUE.times do |i|  
         puts "counter: #{i}, date: #{Time.now}"
         sleep 0.5
    end
end

puts 'Begin'
event() 
puts "The End"

