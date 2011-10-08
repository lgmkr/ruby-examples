pr = Proc.new { |i, k| [i, k] }
l = lambda { |i, k| [i, k] }

p "----- call Proc.new"
p pr.call("hello", "world") # => ["hello","world"]
p pr.call("hello") # => ["hello, nil]
p pr.call # => [nil, nil]
p pr.call("hello", "world", "bye") # => ["hello", "world"]

p "----- call Lambda"
p l.call("hello", "world") # => ["hello", "world"]
p l.call("hello") # ArgumentError: wrong number of arguments (1 for 2)
p l.call # ArgumentError: wrong number of arguments (0 for 2)
p l.call("hello", "world", "bye") # ArgumentError: wrong number of arguments (3 for 2)
