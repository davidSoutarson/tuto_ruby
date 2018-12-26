class Utilisateur
  attr_accessor :prenom, :amis

  def est_amis_avec?(prenom)
    puts"On vas tester si amis avec "+prenom 
    amis.each do |ami|
      puts "on test sur " + ami.prenom
      return true if ami.prenom == prenom
    end
    return false
  end
end

alice = Utilisateur.new 
alice.prenom = "Alice"

bob = Utilisateur.new 
bob.prenom = "Bob"

jane = Utilisateur.new
jane.prenom = "Jane"

alice.amis = [jane, bob]
puts alice.est_amis_avec?("Bob")

puts alice.amis.size
