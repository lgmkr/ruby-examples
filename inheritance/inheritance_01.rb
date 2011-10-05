class Bird  
  def preen  
    puts "I am cleaning my feathers."  
  end  

  def fly  
    puts "I am flying."  
  end  

end  
  
class Penguin < Bird  
  def advantage
    puts "I am on linux logo"
  end


  def fly  
    puts "Sorry. I'd rather swim."  
  end 
end  

p "Parent or super class for Penguin -  #{Penguin.superclass}"
 
p = Penguin.new  
p.preen
p.fly  
p.advantage  
