class Utilisateur
  attr_accessor :prenom
  
  def initialize(prenom)
    @prenom = prenom 
  end 
end

alice = Utilisateur.new("Alice")
bob = Utilisateur.new("Bob")
puts alice.prenom 
puts bob.prenom

