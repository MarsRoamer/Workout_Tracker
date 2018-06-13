# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gym = Gym.create(name: "Front Range Crossfit", city: "Denver", state: "CO", motto: "Deeds not Words")
Gym.create(name: "MBS Crossfit", city: "Broomfield", state: "CO", motto: "Fitness Changes Lives")
Gym.create(name: "Backcountry Crossfit", city: "Highlands Ranch", state: "CO", motto: "Community Oriented Excellence")

workout = Workout.create(name: "Sweat a lot!", conditioning_type: "Metcon", description: "run 5 miles")

user = User.create(name: "Jon Tiede", city: "Denver", state: "CO", username: "Mars", password: "Mars", gym_id: 1)

owner = Owner.create(name: "Jon Tiede", username: "Mars", password: "Mars")


 	  t.string :name
      t.string :city
      t.string :state
      t.string :gym_id
      t.string :username
      t.string :password_digest	