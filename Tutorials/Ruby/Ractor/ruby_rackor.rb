variableTwo = 2

ract = Ractor.new variableTwo, name: 'main' do |val|
  variableOne = 1 + val  # исользование переменной 'variableTwo' внутри 'Ractor' вызовет ошибку
end


puts ract.name   # выводим имя "Ractora"
puts ract.take   # 'Ractor' возвращает последнее значение при помощи метода "take" мы получаем это значение
                 # метод 'take' будет ждать выполнение "Ractora" и вернёт результат его выполнения


ract2 = Ractor.new do 
  val = Ractor.receive  
  variableOne = 1 + val
end


ract2.send variableTwo
puts ract2.take





