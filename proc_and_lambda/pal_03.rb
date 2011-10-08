pr = Proc.new { |i| i }
l = lambda { |i| i }

p "----- call Proc.new"
p pr.call("hello") # => "hello"
p pr.call("hello", "world") # => ["hello", "world"] # warning: multiple values for a block parameter (2 for 1)
p pr.call # => nil # warning: multiple values for a block parameter (0 for 1)

p "----- call Lambda"
p l.call("hello") # => "hello"
p l.call("hello", "world") # => ["hello", "world"] # warning: multiple values for a block parameter (2 for 1)
p l.call # => nil # warning: multiple values for a block parameter (0 for 1)
