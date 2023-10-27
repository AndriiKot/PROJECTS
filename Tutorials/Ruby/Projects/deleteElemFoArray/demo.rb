

arr = [*1..100]

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"

@a = 0;

(0..arr.size - 1).%(4) do |i|
    if @a <= 1
        arr.delete_at(i - @a)
        @a += 1
    else
        arr.delete_at(i - 1)
    end
end
puts

p arr
p "Object id: #{arr.__id__}"
p "Object size: #{arr.size}"
