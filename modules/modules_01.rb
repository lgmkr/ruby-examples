module Birds
  
  def self.preen  
    puts "I am cleaning my feathers."  
  end  

  def self.fly  
   puts "Sorry. I'd rather swim."  
  end 

  class Penguin
    def self.advantage
      puts "I am on linux logo"
    end
  end  

end

Birds::preen
Birds::fly
Birds::Penguin.advantage
