# Way 1
class Foo
  def self.bar
    'class method'
  end
end

p Foo.bar # "class method"

# Way 2
class Foo
  class << self
    def bar
      'class method'
    end
  end
end

p Foo.bar # "class method"

# Way 3
class Foo; end
def Foo.bar
  'class method'
end

p Foo.bar # "class method"
