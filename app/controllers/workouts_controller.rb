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
			redirect_to new_ownersession_path
		end

	end

	def index

	end

	def show
		@workout = Workout.find_by(id: params[:id])
		@gym = Gym.find_by(id: @workout.gym_id)

	end

	def edit
		@gym = Gym.find_by(id: params[:gym_id])
		@owner = Owner.find_by(id: params[:owner_id])
		@workout = Workout.find_by(id: params[:id])

	end

	def update
		workout = Workout.find_by(id: params[:id])
		if current_owner && current_owner.gyms.find_by(id: workout.gym_id)
			workout.update(workout_params)
		    redirect_to workout_path(workout)
		else
			redirect_to new_ownersession_path
		end

	end



	private

		def workout_params 
			params.require(:workout).permit(:name, :conditioning_type, :description)
		end

end