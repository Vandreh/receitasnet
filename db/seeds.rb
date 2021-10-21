# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.create!([
	{
		name: "Estrogonofe de carne",
		stuff: "1 kg de carne, 3 cebolas, sal e pimenta a gosto, 1 latas de creme de leite, 2 colheres (sopa)...",
		calories: 110,
		kind: "Carnes",
		prepare_mode: "Em uma panela, adicione óleo, a carne, os tomates, o caldo de carne e deixe cozinhar por...",
		portion: "5",
		duration: "2016-05-06 00:40:00",
		cost: 50.00,
		poster: "estrogonofe-de-carne.jpg"
	},
	{
		name: "Filé de frango a parmegiana",
		stuff: "1/2 kg de file de frango...",
		calories: 160,
		kind: "Aves",
		prepare_mode: "Tempere tudo e coloque na panela que vai ficar gostoso",
		portion: "8",
		duration: "2016-05-06 0:35:00",
		cost: 40.00,
		poster: "file-de-frango-aparmegiana.jpg",
	},
	{
		name: "Salmão ao forno", 
		stuff: "1 salmão", 
		calories: 90,
		kind: "Carnes",
		prepare_mode: "coloca o salmao no formono", 
		portion: "5",
		duration: "2016-05-06 00:40:00",
		cost: 50.00,
		poster: "estrogonofe-de-carne.jpg"
	},
	{
		name: "Fettuccine", 
		stuff: "Fettuccine is a type of pasta popular in Roman and...", 
		calories: 280, 
		kind: "Pastas",
		prepare_mode: "It is descended from the extremely thin capelli d'...", 
		portion: "5",
		duration: "2016-05-06 00:40:00",
		cost: 50.00,
		poster: "estrogonofe-de-carne.jpg"
	},
	{
		name: "Baião de Dois", 
		stuff: "arroz, feijão e queijo", 
		calories: 150,
		kind: "Cearense",
		prepare_mode: "Mistura tudo na panela!", 
		portion: "5",
		duration: "2016-05-06 00:40:00",
		cost: 50.00,
		poster: "estrogonofe-de-carne.jpg"
	},
])


receita = Recipe.find_by(name: 'Estrogonofe de carne')
receita.comments.create!(name: "Paulo Xavier", rating: 5, comment: "Delicioso")
receita.comments.create!(name: "Joana Santana", rating: 4, comment: "Muito bom.")
receita.comments.create!(name: "Augusto Barros", rating: 4, comment: "Gostoso")

receita = Recipe.find_by(name: 'Salmão ao forno')
receita.comments.create!(name: "Marta Freitas", rating: 5, comment: "O melhor que já comi.")