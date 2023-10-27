

i = 0
n = 5

catch :my_break do
  loop do
    loop do
      loop do
         p i += 1
         sleep 0.5
         throw :my_break if i == n
      end
    end
  end
end

