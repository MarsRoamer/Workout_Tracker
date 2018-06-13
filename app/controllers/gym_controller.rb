class GymController < ApplicationController

	def index

	end

	def new
		if owner_logged_in?
			@owner = Owner.find_by(id: session[:owner_id])
			@gym = Gym.new
		else
			redirect_to new_ownersession_path
		end
	end

	def create
		gym = current_owner.gyms.build(gym_params)
		gym.save
		redirect_to gym_path(gym)
		

	end

	def show
		@gym = Gym.find_by(id: params[:id])
	end

	private

		def gym_params
			params.require(:gym).permit(:name, :city, :state, :motto)
		end


	
end
