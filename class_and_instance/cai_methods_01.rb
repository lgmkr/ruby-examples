class Foo
  def initialize
    p "Hello Foo class!"
  end

  def self.bar
    'class method'
  end
  
  def baz
    'instance method'
  end
end

# Foo.bar # => "class method"
# Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

# Foo.new.baz # => instance method
# Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>
