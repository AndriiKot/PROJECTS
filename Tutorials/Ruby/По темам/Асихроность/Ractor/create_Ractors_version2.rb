
main = Ractor.new name: 'main' do
  while true
    Ractor.yield Ractor.receive
  end
end

other_racts = Array.new(5) do |i|
  Ractor.new(main, i) do |main_ract,index| 
    delay = rand
    sleep delay
    main_ract.send "Hi from ractor #{index + 1}"
  end
end

puts other_racts

5.times do 
  puts main.take
end

