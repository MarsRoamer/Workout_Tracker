class User < ApplicationRecord
	has_secure_password
	belongs_to :gym
	has_many :user_workouts
	has_many :workouts, through: :user_workouts
end
