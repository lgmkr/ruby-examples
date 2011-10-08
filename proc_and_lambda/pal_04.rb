pr = Proc.new { puts "no arg" }
l = lambda { puts "no arg" }

pr.call # no arg 
pr.call("hello") # no arg

l.call # no arg
l.call("hello") #  wrong number of arguments
