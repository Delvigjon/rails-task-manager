# Suppression des tâches existantes pour éviter les doublons (optionnel)
Task.destroy_all

# Ajout de tâches types
TaskTemplate.find_or_create_by(title: "Faire les courses", description: "Acheter du pain, du lait et des légumes.")
TaskTemplate.find_or_create_by(title: "Sport", description: "Faire 30 minutes de cardio.")
TaskTemplate.find_or_create_by(title: "Lecture", description: "Lire 10 pages d’un livre.")
TaskTemplate.find_or_create_by(title: "Méditation", description: "10 minutes de relaxation et respiration profonde.")
TaskTemplate.find_or_create_by(title: "Nettoyage", description: "Faire le ménage dans le salon et la cuisine.")
TaskTemplate.find_or_create_by(title: "Apprentissage", description: "Suivre un tutoriel de 30 minutes sur Ruby on Rails.")

puts "✅ Tâches types insérées avec succès !"

# Création de trois tâches avec différents statuts
Task.create(title: "Réviser Ruby", details: "Faire un exercice sur les classes et modules", completed: false)
Task.create(title: "Faire le ménage", details: "Nettoyer la cuisine et la salle de bain", completed: true)
Task.create(title: "Envoyer un email", details: "Répondre au client sur le projet en cours", completed: true)

puts "✅ 3 tâches créées (1 en cours, 2 soldées) !"
