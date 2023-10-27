

arr = [*1..100]

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"


(0..arr.size - 1).%(4) do |i|
    if i < 1
        arr.delete_at(i)
    else
        arr.delete_at(i - 1)
    end
end
puts

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"
