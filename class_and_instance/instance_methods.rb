class Foo
  def baz
    puts 'instance method'
  end
end

Foo.new.baz # "instance method"

# Way 2
class Foo
  attr_accessor :baz
end

foo = Foo.new
foo.baz = 'instance method'
puts foo.baz

# Way 3
class Foo; end

foo = Foo.new
def foo.bar
  puts 'instance method'
end

Foo.new.baz # "instance method"
