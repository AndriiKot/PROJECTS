
hash_Folders = {}
hash_Folders.default = ''

def my_break(value)
    throw :my_break if value
end

catch :my_break do
  loop do
    loop do
      loop do
          element_key = gets.strip
          my_break(element_key.empty?)

          element_value = gets.strip
          my_break(element_value.empty?)

          hash_Folders[element_key] = element_value
      end
    end
  end
end

p hash_Folders
