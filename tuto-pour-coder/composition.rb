# Définition d'une classe Eleve, avec un nom et une liste d'examens
class Eleve
  attr_accessor :nom, :examens
end

# Définition d'une classe Examen avec un nom et une note
class Examen
  attr_accessor :nom, :note

  # Initialisation de l'examen avec ses attributs
  def initialize(nom, note)
    @nom = nom
    @note = note
  end
end

# Création d'un élève nommé Billy
mon_eleve = Eleve.new
mon_eleve.nom = "Billy"

# Création de deux examens avec leur note
maths = Examen.new("maths", 10)
philo = Examen.new("philo", 15)

# Assignation des examens à l'élève
mon_eleve.examens = [maths, philo]

# Affichage des examens de l'élève
puts "Examens de #{mon_eleve.nom} :"
mon_eleve.examens.each do |examen|
  puts "- #{examen.nom} : #{examen.note}/20"
end
