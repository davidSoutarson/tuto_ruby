class Utisisateur
  attr_accessor :prenom, :nom
end


bob = Utisisateur.new
bob.prenom = "Bob"
bob.nom = "Lenon"

puts bob.prenom + " " +bob.nom

jane = Utisisateur.new
jane.prenom = "Jane"
jane.nom ="Lenon"

puts jane.prenom 
