puts "Lets go seeding !"

puts "DB has been destroyed"

puts "Starting creating users !"

user1 = User.create!(email: "email4@email.fr", password: "azerty1", username: "user1")
user2 = User.create!(email: "email5@email.fr", password: "azerty2", username: "user2")
user3 = User.create!(email: "email6@email.fr", password: "azerty3", username: "user3")

puts "Users created !"

puts "Starting creating Pokemons !"

pokemon1 = Pokemon.create!(name: "Pokemon1", level: 1, category: "Fire", price: 10, user_id: user1.id)
pokemon2 = Pokemon.create!(name: "Pokemon2", level: 2, category: "Water", price: 20, user_id: user2.id)
pokemon3 = Pokemon.create!(name: "Pokemon3", level: 3, category: "Grass", price: 30, user_id: user3.id)

puts "Pokemons created !"


puts "Booking for pokemons"

booking1 = Booking.create!(date: "22/10/2000", user_id: 3, pokemon_id: 9)
