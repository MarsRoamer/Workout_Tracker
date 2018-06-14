class WorkoutsController < ApplicationController

	def new
		@gym = Gym.find_by(id: params[:gym_id])
		@owner = Owner.find_by(id: params[:owner_id])
		@workout = Workout.new
		
	end

	def create
		gym = Gym.find_by(id: params[:gym_id])
		workout = gym.workouts.build(workout_params)
		if gym.owner_id == current_owner.id
			workout.save
			redirect_to gym_path(gym)
		else
			redirect_to new_ownersession
		end

	end

	def index

	end

	def show
		@workout = Workout.find_by(id: params[:id])

	end



	private

		def workout_params 
			params.require(:workout).permit(:name, :conditioning_type, :description)
		end

end