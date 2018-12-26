emails = [
  "boo@bod.com","jane@hello.com"
]

emails.each do |email|
  puts email 
  if email == "bob@bod.com"
  puts "Bonjour bob!"
  else 
    puts "vous n'êtes pas bob"
  end
end
