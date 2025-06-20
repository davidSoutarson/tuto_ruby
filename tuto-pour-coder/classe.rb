# Définition d'une classe Utilisateur avec deux attributs : prénom et nom
class Utilisateur
  attr_accessor :prenom, :nom
end

# Création d'une instance de la classe Utilisateur pour Bob
bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lenon"

# Affiche "Bob Lenon"
puts bob.prenom + " " + bob.nom

# Création d'une autre instance pour Jane
jane = Utilisateur.new
jane.prenom = "Jane"
jane.nom = "Lenon"

# Affiche "Jane"
puts jane.prenom

