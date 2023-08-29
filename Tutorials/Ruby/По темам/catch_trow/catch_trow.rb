
def limit(n)
  puts n
  throw :done if n <= 0
  limit(n-1)
end

catch(:done) { limit(5) }

puts "+" * 44

def limit_return(n)
  puts n
  return if n <= 0
  limit_return(n - 1)
end

limit_return(10);

