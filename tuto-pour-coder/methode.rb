# Définition de la classe Utilisateur
class Utilisateur
  # Création d'accesseurs pour lire et écrire les attributs
  attr_accessor :prenom, :nom, :langage_prefere 

  # Méthode sans paramètre : retourne le prénom et le nom de l'utilisateur
  def nom_complet 
    prenom + " " + nom
  end

  # Méthode avec un paramètre : vérifie si l'utilisateur aime un certain langage
  def aime_le(langage)
    if langage == langage_prefere
      "oui :)"
    else
      "Non :("
    end
  end
end 

# Création d'un utilisateur Bob et initialisation de ses attributs
bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lenon"
bob.langage_prefere = "Python"

# Création d'un autre utilisateur Paul
paul = Utilisateur.new 
paul.prenom = "Paul"
paul.nom = "Fane"
paul.langage_prefere = "Ruby"

# Affichage des préférences en langage de chaque utilisateur
puts "Est-ce que " + paul.nom_complet + " aime le Ruby ?\n" + paul.aime_le("Ruby") + "\n" +
     "Est-ce que " + bob.nom_complet + " aime le Ruby ?\n" + bob.aime_le("Ruby")
