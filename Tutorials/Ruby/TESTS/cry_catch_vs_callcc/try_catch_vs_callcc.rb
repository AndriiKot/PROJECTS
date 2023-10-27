require 'benchmark'
require "continuation" 



               
n = 1_000_000_0

Benchmark.bm do |x|

x.report(' callcc '){       
callcc { |my_break,i = 0|
  loop do
    loop do
      loop do
	def m(); end
        m  
        i += 1
        my_break[] if i == n
      end
    end
  end
}
	 
}

x.report(' catch throw '){       
i = 0

catch :my_break2 do
  loop do
    loop do
      loop do
	def m(); end
        m  
         i += 1
         throw :my_break2 if i == n
      end
    end
  end
end
} 


x.report(' catch throw i в loop do '){       

catch :my_break2 do 
i = 0
  loop do
    loop do
      loop do
	def m(); end
        m  
         i += 1
         throw :my_break2 if i == n
      end
    end
  end
end
} 

x.report(' catch throw i в loop do copy '){       

catch :my_break3 do 
i = 0
  loop do
    loop do
      loop do
	def m(); end
        m  
         i += 1
         throw :my_break3 if i == n
      end
    end
  end
end
}

x.report(' catch throw  copy '){       
i = 0

catch :my_break4 do
  loop do
    loop do
      loop do
	def m(); end
        m  
         i += 1
         throw :my_break4 if i == n
      end
    end
  end
end
} 

x.report(' callcc copy'){       
callcc { |my_break1,i = 0|
  loop do
    loop do
      loop do
	def m(); end
        m  
        i += 1
        my_break1[] if i == n
      end
    end
  end
}
}
end

