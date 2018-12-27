class Eleve
  attr_accessor :nom, :examens
end

class Examen
  attr_accessor :nom, :note

  def initialize(nom, note)
    @nom = nom 
    @note = note 
  end
end 

mon_eleve = Eleve.new
mon_eleve.nom = "Billy"

maths = Examen.new("maths",10)
philo = Examen.new("philo", 15)

mon_eleve.examens = [maths, philo]

puts "Esamens de #{mon_eleve.nom}"
mon_eleve.examens.each do |examen|
  puts examen.nom
end
