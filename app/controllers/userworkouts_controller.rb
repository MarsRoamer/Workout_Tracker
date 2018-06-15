class UserworkoutsController < ApplicationController

	def new
		
		@userworkout = UserWorkout.new(user_id: current_user.id, workout_id: params[:workout_id])

	end

	def create
		
		workout = Workout.find_by(id: params[:workout_id])
		userworkout = UserWorkout.create(user_id: current_user.id, workout_id: params[:workout_id], time: params[:time], score: params[:score])
		userworkout.save
		redirect_to workout_userworkout_path(workout, userworkout)

	end

	def show
		@userworkout = UserWorkout.find_by(id: params[:id])
	end

	private



end