def foo(x) 
  puts x 
end


(1..5).each(&method(:foo))

