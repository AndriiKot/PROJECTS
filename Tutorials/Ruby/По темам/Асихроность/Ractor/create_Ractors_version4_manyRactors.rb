
main = Ractor.new name: 'main' do
  while true
    Ractor.yield Ractor.receive
  end
end

CORES = 12

Array.new(CORES) do |i|
  Ractor.new(main, i) do |main_ract, index|
    while true
      num = main_ract.take
   
      sleep rand(1..10)

      puts "Number #{num} from ractor #{index + 1}"
    end
  end
end  

while true
  puts "Enter a number: "

  num = gets.to_i

  main.send(num)
end


