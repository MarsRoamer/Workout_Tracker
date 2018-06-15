class Gym < ApplicationRecord
	
	has_many :workouts
	has_many :users
	has_many :user_workouts, through: :users
	belongs_to :owner


end
