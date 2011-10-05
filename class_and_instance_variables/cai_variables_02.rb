class Polygon
  @sides = 10
  def sides
    @sides
  end

  def sides=(var)
    @sides = var
  end
end

p = Polygon.new 
p.sides = 2
p p.sides

=begin
class Polygon
  class << self; attr_accessor :sides end
  @sides = 8
end

puts Polygon.sides # => 8

class Triangle < Polygon
  @sides = 3
end

puts Triangle.sides # => 3
puts Polygon.sides # => 8

p Polygon.instance_variables
=end

