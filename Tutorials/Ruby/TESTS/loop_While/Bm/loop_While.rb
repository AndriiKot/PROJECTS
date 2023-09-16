require 'benchmark'
n = 1_000_000_000
a1 = 0
a2 = 0

Benchmark.bm do |x|

x.report('loop do var: "@a"'){
	loop do 
         @a = @a || 0
         @a += 1
         break if @a == n
        end
}

x.report('loop do var: "a1"'){
	loop do 
	 a1 += 1
         break if a1 == n
        end
}


x.report('while true: @b'){
	while 
	  @b = @b || 0
          @b += 1
          break if @b == n
        end
}
x.report('while true: "a2"'){
         while
           a2 += 1
           break if a2 == n
         end
}
end

 