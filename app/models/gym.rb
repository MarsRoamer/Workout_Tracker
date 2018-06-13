class Gym < ApplicationRecord
	
	has_many :workouts
	has_many :users
	belongs_to :owner


end
