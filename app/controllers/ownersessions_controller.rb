class OwnersessionsController < ApplicationController

	def new

		@owner = Owner.new
	end

	def create
		
		owner = Owner.find_by(username: params[:owner][:username])
		if owner && owner.authenticate(params[:owner][:password])
			
			session[:owner_id] = owner.id 
			redirect_to owner_path(owner)
		else
			@owner = Owner.new
			render 'new'
		end
	end

	def show

	end

	def destroy
		session.clear
		redirect_to root_path
	end



end