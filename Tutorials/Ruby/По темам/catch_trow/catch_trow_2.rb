@hh = {}

def add_person name,age
    @hh[name] = age
end

def shown_hash
    @hh.keys.each do |key|
       age = @hh[key]
       puts "Name #{key}, age #{age}"
    end
end

loop do
begin
   print 'Enter yuor name: '
   name = gets.strip.capitalize
   break if name == ''
   print 'Enter yuor age: '
   age = gets.to_i
	if age == 0
   break
	end
   age = age.to_i

  add_person name,age
end
end

shown_hash
