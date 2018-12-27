class Animal
  attr_accessor :nom 
#method initialize executer de nom  
  def initialize(non)
    @nom = nom 
  end 
#method utilsation du nom 
  def parler 
    puts "je suis un animal qui s'appelle #{nom}"
  end  
end 
#variable pour atribuant les parametre () a nom
mon_chien = Animal.new("Bob le chien")
mon_chat = Animal.new("Adeline le chat")
#execution de la method parler 
mon_chat.parler
mon_chien.parler

