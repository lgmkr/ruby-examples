# Way 1
class Foo
  def self.bar
    puts 'class method'
  end
end

p Foo.bar # "class method"

# Way 2
class Foo
  class << self
    def bar
      puts 'class method'
    end
  end
end

p Foo.bar # "class method"

# Way 3
class Foo; end
def Foo.bar
  puts 'class method'
end

p Foo.bar # "class method"
