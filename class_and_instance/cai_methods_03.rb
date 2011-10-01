# Way 1
class Foo
  def baz
    'instance method'
  end
end

p Foo.new.baz # "instance method"

# Way 2
class Foo
  attr_accessor :baz
end

foo = Foo.new
foo.baz = 'instance method'
p foo.baz

# Way 3
class Foo; end

foo = Foo.new
def foo.baz
  'instance method'
end

p foo.baz # "instance method"
