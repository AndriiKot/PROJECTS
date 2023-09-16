
ractor_main = Ractor.new name: 'main' do
  sleep 3
  'ractor sleep 3 sec'
end

ractor_2 = Ractor.new do
  sleep 2
  'ractor sleep 2 sec.'
end

ractor_3 = Ractor.new do
  sleep 1
  'ractor sleep 1 sec.'
end


ractors = [ractor_main, ractor_2,ractor_3]

loop do
 break unless ractors.any? 

 ract, result = Ractor.select(*ractors)
 
 puts ract.inspect
 puts result

 ractors.delete ract
end

