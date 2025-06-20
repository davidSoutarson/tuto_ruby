# Déclaration d'un tableau contenant deux adresses email
emails = [
  "bob@bod.com", 
  "jane@hello.com"
]

# Boucle pour parcourir chaque email dans le tableau
emails.each do |email|
  puts email # Affiche l'email courant

  # Vérifie si l'email est celui de Bob
  if email == "bob@bod.com"
    puts "Bonjour Bob !" # Message personnalisé pour Bob
  else
    puts "Vous n'êtes pas Bob." # Message pour les autres utilisateurs
  end
end

# Résumé :
# On utilise .each pour parcourir chaque élément du tableau emails.
#On vérifie avec une condition if si l'email est égal à "bob@bod.com".
#On affiche un message personnalisé selon l'adresse email.

