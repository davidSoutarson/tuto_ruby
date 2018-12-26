class Utilisateur
  attr_accessor :prenom, :nom, :langage_prefere 

  #methode sans parametre
  def nom_complet 
    prenom + " " + nom
  end

  #methode avec parametre
  def aime_le(langage)
    if langage == langage_prefere
      "oui :)"
    else
      "Non:("
    end
  end

end 

bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lenon"
bob.langage_prefere = "Python"

paul = Utilisateur.new 
paul.prenom = "Paul"
paul.nom = "fane"
paul.langage_prefere = "Ruby"

puts"Est-ce que"+ paul.nom_complet + " aime le ruby ?\n" +paul.aime_le("Ruby")+"\n"+
   "Est-ce que"+ bob.nom_complet + " aime le ruby ?\n" +bob.aime_le("Ruby")


