class Gym < ApplicationRecord
	
	has_many :workouts
	has_many :users
	has_many :user_workouts, through: :users
	belongs_to :owner
	scope :mostpopular, -> { where(id: Gym.mostusers.id)}


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

	def self.mostusers 
		popular = ""
		placeholder = 0
		Gym.all.each do |gym|
			
			number = gym.users.count
			if number > placeholder
				placeholder = number
				popular = gym
				
			end		
		end	
		popular
	end


end
