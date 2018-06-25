class WorkoutsController < ApplicationController

	def new
		if current_owner
			@gym = Gym.find_by(id: params[:gym_id])
			@owner = Owner.find_by(id: params[:owner_id])
			@workout = Workout.new
		else
			redirect_to owners_path
		end
		
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
		if current_user
			@user = current_user

		else
			redirect_to new_session_path
		end
	end

	def show
		
		if params[:workout]
			@workout = Workout.find_by(id: params[:workout][:workout_id])
		else
			@workout = Workout.find_by(id: params[:id])	
		end

		@gym = Gym.find_by(id: @workout.gym_id)

	end

	def edit
		if current_owner
			@gym = Gym.find_by(id: params[:gym_id])
			@owner = Owner.find_by(id: params[:owner_id])
			@workout = Workout.find_by(id: params[:id])
		else
			redirect_to owners_path 
		end

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