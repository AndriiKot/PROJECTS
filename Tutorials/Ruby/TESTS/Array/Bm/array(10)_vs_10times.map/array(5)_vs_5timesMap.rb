require 'benchmark'

n = 1_000

Benchmark.bm do |x|


x.report('Array.new(5) '){  
	n.times {     
		main = Ractor.new name: 'main' do
		  while true
		    Ractor.yield Ractor.receive
		  end
		end

		other_racts = Array.new(5) do |i|
		  Ractor.new(main, i) do |main_ract,index| 
		    main_ract.send "Hi from ractor #{index + 1}"
		  end
		end

		5.times do 
		   main.take
		end
	}
}

x.report('5.times.map'){
	n.times {
		main2 = Ractor.new name: 'main' do
		  while true
		    Ractor.yield Ractor.receive
		  end
		end

		other_racts2 = 5.times.map do |i|
		  Ractor.new(main2, i) do |main_ract,index| 
		    main_ract.send "Hi from ractor #{index + 1}"
		  end
		end

		5.times do 
		  main2.take
		end
	}
}

x.report('Array.new(5) '){  
	n.times {     
		main3 = Ractor.new name: 'main' do
		  while true
		    Ractor.yield Ractor.receive
		  end
		end

		other_racts3 = Array.new(5) do |i|
		  Ractor.new(main3, i) do |main_ract,index| 
		    main_ract.send "Hi from ractor #{index + 1}"
		  end
		end

		5.times do 
		   main3.take
		end
	}
}

x.report('5.times.each'){
	n.times {
		main4 = Ractor.new name: 'main' do
		  while true
		    Ractor.yield Ractor.receive
		  end
		end

		other_racts2 = 5.times.map do |i|
		  Ractor.new(main4, i) do |main_ract,index| 
		    main_ract.send "Hi from ractor #{index + 1}"
		  end
		end

		5.times do 
		  main4.take
		end
	}
}


end
