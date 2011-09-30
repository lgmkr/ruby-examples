##########
## http://railstips.org/blog/archives/2006/11/18/class-and-instance-variables-in-ruby/
##########

class Polygon
  @sides = 10
  @@sides = 11	
  @sides2 = 12
  @@sides2 = 13
end

p Polygon.class_variables # => @@sides
p Polygon.instance_variables # => @sides

class Polygon
  class << self; attr_accessor :sides end
  @sides = 8
end

p Polygon.sides

class Triangle < Polygon
  @sides = 3
end

p Triangle.sides # => 3
p Polygon.sides # => 8

class Octogon < Polygon
end
p Octogon.sides # => nil
