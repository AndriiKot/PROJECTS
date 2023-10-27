require "continuation" 

hash_Folders = {}
hash_Folders.default = ''
callcc { |my_break|
  loop do
    loop do
      loop do
          print 'Enter key: '
          element_key = gets.strip
          my_break[] if element_key.empty?

          print 'Enter value: '
          element_value = gets.strip
          my_break[] if element_value.empty?

          hash_Folders[element_key] = element_value
      end
    end
  end
}

p hash_Folders
