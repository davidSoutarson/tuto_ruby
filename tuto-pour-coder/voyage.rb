villes = ["Paris","New york","Berlin","Montréal"] 

voyages = [
  { ville: "paris", duree: 10 },
  { ville: "New york", duree: 5 },
  { ville: "Berlin", duree: 2 }, 
  { ville: "Montréal",duree: 15 }
]

  puts "Si j'aitais en vacances, j'irais a..."
villes.each do |ville|
  puts ville
end

  puts "detaile de mes vacanse de rêve"

voyages.each do |voyage| 
  puts "Voyage a #{voyage[:ville]} de #{voyage[:duree]}jour"
end

  puts "mes vacances de rêve (enfin presque)"

voyages.each do |voyage|
if voyage[:duree] <= 5 
  puts "voyage a #{voyage[:ville]} de #{voyage[:duree]}jour "
end
end
