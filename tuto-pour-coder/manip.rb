# Définition de la classe Utilisateur
class Utilisateur
  attr_accessor :prenom
  
  # Méthode d'initialisation avec les paramètres prénom et sexe
  def initialize(prenom, sexe)
    # Si le sexe est "f", on préfixe par "Madame"
    if sexe == "f"
      @prenom = "Madame " + prenom
    else
      # Sinon on considère que c'est un homme et on préfixe par "Monsieur"
      @prenom = "Monsieur " + prenom
    end
  end
end

# Création d'une instance pour une femme
alice = Utilisateur.new("Alice", "f")
# Création d'une instance pour un homme
bob = Utilisateur.new("Bob", "h")

# Affichage des résultats
puts alice.prenom  # => Madame Alice
puts bob.prenom    # => Monsieur Bob
