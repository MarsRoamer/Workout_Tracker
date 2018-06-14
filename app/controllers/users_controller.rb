class UsersController < ApplicationController

	def new
		@user = User.new
		@gyms = Gym.all
	end

	def create
		user = User.create(user_params)
		session[:user_id] = user.id
		redirect_to user_path(user)

	end

	def update

	end

	def show
		if !user_logged_in?
			redirect_to new_session_path
		else
			@user = current_user
		end

	end

	private

		def user_params
			params.require(:user).permit(:name, :city, :state, :gym_id, :username, :password)
		end

end