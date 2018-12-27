class Animal
  attr_accessor :nom 
  
  def initialize(nom)
    @nom = nom 
  end 
end
#la class chat herite de la class Animal 
class Chat < Animal
  def parler 
    puts "#{nom}: Miaou!"
  end  
end 
#la class chien herite de la class Animal 
class Chien < Animal
  def parler 
    puts "#{nom}: Ouaf!"
  end
end
#variable pour atribuant les parametre () a nom
mon_chien = Chien.new("Bob le chien")
mon_chat = Chat.new("Adeline le chat")
#execution de la method parler 
mon_chat.parler
mon_chien.parler

