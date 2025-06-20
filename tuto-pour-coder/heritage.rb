# Classe de base Animal avec un attribut nom
class Animal
  attr_accessor :nom

  def initialize(nom)
    @nom = nom
  end
end

# La classe Chat hérite de Animal
class Chat < Animal
  def parler
    puts "#{nom} : Miaou !"  # Le chat parle
  end
end

# La classe Chien hérite aussi de Animal
class Chien < Animal
  def parler
    puts "#{nom} : Ouaf !"  # Le chien parle
  end
end

# Création d'instances avec un nom
mon_chien = Chien.new("Bob le chien")
mon_chat = Chat.new("Adeline le chat")

# Appel de la méthode parler pour chaque animal
mon_chat.parler
mon_chien.parler


# Résultat attendu :
# Adeline le chat : Miaou !
# Bob le chien : Ouaf !
