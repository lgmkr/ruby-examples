hello = "Hello world"

l = lambda { puts hello }
l.call

p = Proc.new { puts hello }
p.call

def say_hello
  puts hello
end

say_hello

