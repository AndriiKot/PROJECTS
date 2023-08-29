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

def instruction_user_name =  print 'Enter yuor name: '
def instruction_user_tel =  print 'Enter yuor age: '
def set_user_name(user_name) = user_name
def set_uset_tel(user_tel) = user_tel
def valid_tel(tel) = /[0..9]/.match? tel
def valid_user_name(name) = /\w+/.match? name




=begin
loop do
begin
   print 'Enter yuor name: '
   name = gets.strip.capitalize
   break if name == ''
   age = gets.to_i
	if age == 0
   break
	end
   age = age.to_i

  add_person name,age
end
end
=end


