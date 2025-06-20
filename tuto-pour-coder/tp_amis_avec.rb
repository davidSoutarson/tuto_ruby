class Utilisateur
  attr_accessor :prenom, :amis

  # Méthode pour vérifier si l'utilisateur est ami avec une personne donnée
  def est_amis_avec?(prenom)
    puts "On va tester si ami avec " + prenom

    # Parcours de la liste d'amis
    amis.each do |ami|
      puts "On teste sur " + ami.prenom

      # Si un prénom correspond, on retourne true (ils sont amis)
      return true if ami.prenom == prenom
    end

    # Si aucun prénom ne correspond, on retourne false
    return false
  end
end

# Création des utilisateurs
alice = Utilisateur.new
alice.prenom = "Alice"

bob = Utilisateur.new
bob.prenom = "Bob"

jane = Utilisateur.new
jane.prenom = "Jane"

# Alice a deux amis : Jane et Bob
alice.amis = [jane, bob]

# Vérifie si Alice est amie avec "Bob"
puts alice.est_amis_avec?("Bob")  # => true

# Affiche le nombre d'amis d'Alice
puts alice.amis.size  # => 2

