class Bird  

  def color(var = 'different')
    puts "My color #{var}"  
  end  

end  
  
class Penguin < Bird  

  def color(var)  
    super
  end 

end  

p "---- Bird class"

b = Bird.new  
b.color

p "---- Penguin class inherited from #{Penguin.superclass}"

p = Penguin.new  
p.color('white')
