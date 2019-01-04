class Workout < ApplicationRecord
	has_many :comments

	def time(user)
		user.user_workouts.find_by(workout_id: self.id).time
	end

	def score(user)
		user.user_workouts.find_by(workout_id: self.id).score
	end

	
end
