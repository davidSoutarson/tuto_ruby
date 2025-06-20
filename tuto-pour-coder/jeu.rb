class Personne
  attr_accessor :nom, :points_de_vie, :en_vie

  def initialize(nom)
    @nom = nom
    @points_de_vie = 100
    @en_vie = true
  end

  def info
    if en_vie
      return "#{nom} (#{points_de_vie} PV)"
    else
      return "#{nom} (vaincu)"
    end
  end

  def attaque(personne)
    if en_vie
      degats = self.degats
      puts "#{nom} attaque #{personne.nom} et lui inflige #{degats} points de dégâts."
      personne.subit_attaque(degats)
    end
  end

  def subit_attaque(degats_recus)
    @points_de_vie -= degats_recus
    puts "#{nom} subit #{degats_recus} points de dégâts. (PV restants : #{@points_de_vie})"

    if @points_de_vie <= 0
      @en_vie = false
      @points_de_vie = 0
      puts "#{nom} a été vaincu !"
    end
  end
end

class Joueur < Personne
  attr_accessor :degats_bonus

  def initialize(nom)
    @degats_bonus = 0
    super(nom)
  end

  def degats
    base = rand(10..20)
    total = base + degats_bonus
    puts "#{nom} prépare une attaque de #{total} dégâts (bonus : #{degats_bonus})"
    total
  end

  def soin
    soin_amount = rand(10..30)
    @points_de_vie += soin_amount
    @points_de_vie = 100 if @points_de_vie > 100
    puts "#{nom} se soigne de #{soin_amount} points. (PV : #{@points_de_vie})"
  end

  def ameliorer_degats
    gain = rand(1..5)
    @degats_bonus += gain
    puts "#{nom} améliore son attaque de +#{gain}. (Bonus actuel : #{@degats_bonus})"
  end
end

class Ennemi < Personne
  def degats
    rand(5..15)
  end
end

class Jeu
  def self.actions_possibles(monde)
    puts "\nACTIONS POSSIBLES :"
    puts "0 - Se soigner"
    puts "1 - Améliorer son attaque"
    i = 2
    monde.ennemis_en_vie.each do |ennemi|
      puts "#{i} - Attaquer #{ennemi.info}"
      i += 1
    end
    puts "99 - Quitter"
  end

  def self.est_fini(joueur, monde)
    !joueur.en_vie || monde.ennemis_en_vie.empty?
  end
end

class Monde
  attr_accessor :ennemis

  def ennemis_en_vie
    ennemis.select { |e| e.en_vie }
  end
end

# =========================
# Initialisation du jeu
# =========================

monde = Monde.new
monde.ennemis = [
  Ennemi.new("Balrog"),
  Ennemi.new("Goblin"),
  Ennemi.new("Squelette")
]

joueur = Joueur.new("Jean-Michel Paladin")

puts "\n\nAinsi débutent les aventures de #{joueur.nom}\n\n"

100.times do |tour|
  puts "\n------------------ Tour numéro #{tour + 1} ------------------"
  Jeu.actions_possibles(monde)

  puts "\nQUELLE ACTION FAIRE ?"
  choix = gets.chomp.to_i

  if choix == 0
    joueur.soin
  elsif choix == 1
    joueur.ameliorer_degats
  elsif choix == 99
    puts "Vous quittez la partie."
    break
  else
    ennemi = monde.ennemis_en_vie[choix - 2]
    if ennemi
      joueur.attaque(ennemi)
    else
      puts "Action invalide."
    end
  end

  puts "\nLES ENNEMIS RIPOSTENT !"
  monde.ennemis_en_vie.each do |ennemi|
    ennemi.attaque(joueur)
  end

  puts "\nÉtat du héros : #{joueur.info}\n"

  break if Jeu.est_fini(joueur, monde)
end

puts "\n====== Fin du jeu ======"

if joueur.en_vie
  puts "Bravo, vous avez vaincu tous les ennemis !"
else
  puts "Vous avez été vaincu. Dommage !"
end
