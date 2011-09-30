class Polyghon
  @@sides = 10
  def self.sides
    @@sides
  end
end

puts Polyghon.sides

class Triangle < Polyghon
  @@sides = 3
end

puts Polyghon.sides
puts Triangle.sides
puts Polyghon.sides

class Rectangle < Polyghon
  @@sides = 4
end

puts Rectangle.sides

