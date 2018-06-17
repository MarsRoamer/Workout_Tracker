class Gym < ApplicationRecord
	
	has_many :workouts
	has_many :users
	has_many :user_workouts, through: :users
	belongs_to :owner

	def wod_results
		nested_arr = []
		id = self.workouts.last.id

		self.users.each do |user|
			workout = user.user_workouts.find_by(workout_id: id)
			
			if workout != nil
				arr = []
				arr << user.username
				arr << workout.time
				arr << workout.score
				nested_arr << arr
			end
		end
		nested_arr
	end


end
