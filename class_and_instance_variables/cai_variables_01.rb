class Aquarium
  @@fishes = 3
  def self.fishes # getter
    @@fishes
  end
end

p Aquarium.class_variables # => @@sides

puts "--------------------------------------------"
puts "Aquarium.fishes = #{Aquarium.fishes}" # => 3
puts "--------------------------------------------"

class TriangleAquarium < Aquarium
  @@fishes = 7
end
puts "--------------------------------------------"
puts "Aquarium.fishes = #{Aquarium.fishes}" # => 7
puts "TriangleAquarium.fishes = #{TriangleAquarium.fishes}" # => 7
puts "Aquarium.fishes = #{Aquarium.fishes}" # => 7
puts "--------------------------------------------"

class RectangleAquarium < Aquarium
  @@fishes = 10
end
puts "--------------------------------------------"
puts "RectangleAquarium.fishes = #{RectangleAquarium.fishes}" # => 10
puts "TriangleAquarium.fishes = #{TriangleAquarium.fishes}" # => 10
puts "Aquarium.fishes = #{Aquarium.fishes}" # => 10
puts "--------------------------------------------"
