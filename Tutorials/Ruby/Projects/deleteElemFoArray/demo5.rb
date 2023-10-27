

arr = [*1..100]

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"



while true
  print "Enter nubmer(1..100): "
  n = gets.to_i
  next if n <= 0
  n -= 1
  break
end


(0..arr.size - 1).%(n) do |i|
    i < 1 ? arr.delete_at(i) : arr.delete_at(i - 1)
end

puts

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"
