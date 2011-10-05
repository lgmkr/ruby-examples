module Foo
  def foo
    puts 'heyyyyoooo!'
  end
end

class Bar
  include Foo
end

Bar.new.foo # heyyyyoooo!
# Bar.foo # NoMethodError

class Baz
  extend Foo
end

Baz.foo # heyyyyoooo!
# Baz.new.foo # NoMethodError
