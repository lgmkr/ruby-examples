module BirdsProperties
  
  def self.preen  
    puts "I am cleaning my feathers."  
  end  

  def self.fly  
   puts "Sorry. I'd rather swim."  
  end 


end

class Penguin
  include BirdProperties

  def advantage
    puts "I am on linux logo"
  end
end  

b = Penguin.new
b.fly
b.preen
b.advantage

