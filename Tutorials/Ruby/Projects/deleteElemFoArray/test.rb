require 'benchmark'

n = 100_000
arr = [*1..n]
arr2 = [*1..n]
arr3 = [*1..n]
arr4 = [*1..n]
arr5 = [*1..n]
arr6 = [*1..n]
indexes = [1, 5, 10]

n = 1000 # Количество повторений

Benchmark.bm(15) do |x|
  x.report("Function 1") do
    n.times do
      a = 0
      (0..arr.size - 1).step(4) do |i|
        if a <= 1
          arr.delete_at(i - a)
          a += 1
        else
          arr.delete_at(i + 1 - a)
        end
      end
    end
  end

  x.report("Function 1-1") do
    n.times do
      @a = 0
      (0..arr2.size - 1).%(4) do |i|
        if @a <= 1
          arr2.delete_at(i - @a)
        else
          @a += 1
          arr2.delete_at(i + 1 -@a)
        end
      end
    end
  end

  x.report("Function 1-2") do
    n.times do
        @a = 0
        i = 0
        
        while i < arr3.size do
          if @a <= 1
            arr3.delete_at(i - @a)
            @a += 1
          else
            arr3.delete_at(i + 1 - @a)
          end
          i += 4
        end
    end
  end

  x.report("Function 1-3") do
    n.times do
      @a = 0;

      (0..arr4.size - 1).%(4) do |i|
          if @a <= 1
              arr4.delete_at(i - @a)
              @a += 1
          else
              arr4.delete_at(i - 1)
          end
      end
    end
  end

  x.report("Function 1-4") do
    n.times do
      (0..arr5.size - 1).%(4) do |i|
        if i < 0 then arr5.delete_at(i)
        else arr5.delete_at(i - 1) end
      end
    end
  end

  x.report("Function 1-4") do
    n.times do
      (0..arr6.size - 1).%(4) do |i|
        i < 1 ? arr6.delete_at(i) : arr6.delete_at(i - 1)
      end
    end
  end



  # x.report("Function 2") do
  #   n.times do
  #     arr4.reject!.with_index(1) { |_, i| indexes.include?(i) }
  #   end
  # end

  # x.report("Function 3") do
  #   n.times do
  #     arr5.reject.with_index(1) { |_, i| i == 1 || i % 5 == 0 }
  #   end
  # end
end