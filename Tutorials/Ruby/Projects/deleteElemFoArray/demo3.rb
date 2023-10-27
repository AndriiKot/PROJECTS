

arr = [*1..100]

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"


(0..arr.size - 1).%(99) do |i|
    i < 1 ? arr.delete_at(i) : arr.delete_at(i - 1)
end

puts

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"
