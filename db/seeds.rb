# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Owner.create(name: "Jon Tiede", username: "Jon", password: "Jon")
Owner.create(name: "Jana Tiede", username: "Jana", password: "Jana")
Owner.create(name: "River Tiede", username: "River", password: "River")
Owner.create(name: "Cimbri Tiede", username: "Cimbri", password: "Cimbri")
Owner.create(name: "Admin", username: "Admin", Password: "Admin")

Gym.create(name: "Backcountry Crossfit", city: "Highlands Ranch", state: "CO", motto: "Community Oriented Excellence", owner_id: 1)
Gym.create(name: "MBS Crossfit", city: "Broomfield", state: "CO", motto: "Fitness Changes Lives", owner_id: 2)
Gym.create(name: "Front Range Crossfit", city: "Denver", state: "CO", motto: "Deeds not Words", owner_id: 3)
Gym.create(name: "Alpine", city: "Golen", state: "CO", motto: "Rise Above!", owner_id: 4)
Gym.create(id: 1000000, name: "Placeholder for Omniauth users", city: "Admin:", state: "Admin", motto: "Admin", owner_id: 5)

User.create(name: "Jon Tiede", city: "Denver", state: "CO", username: "Mars", password: "Mars", gym_id: 1)



