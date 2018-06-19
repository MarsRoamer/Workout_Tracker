class UsersController < ApplicationController

	def new
		@user = User.new
		@gyms = Gym.all[0...-1]
	end

	def create
		@user = User.new(user_params)
		if @user.valid?
			@user.save 
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			# @gyms = Gym.all[0...-1]
			render :new
		end

	end

	def edit
		@user = current_user
	end

	def update
		
		user = current_user
		user.update(update_params)
		redirect_to user_path(user)

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
			params.require(:user).permit(:name, :city, :state, :gym_id, :username, :password, :email)
		end

		def update_params
			params.require(:user).permit(:username, :gym_id, :email)
		end

end