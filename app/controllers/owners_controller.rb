class OwnersController < ApplicationController


	def index
		if session[:owner_id] != nil
			@owner = Owner.find_by(id: session[:owner_id])
			redirect_to owner_path(@owner)
		end

	end

	def new
		@owner = Owner.new
	end

	def create
		@owner = Owner.new(owner_params)
		if @owner.valid?
			@owner.save
			session[:owner_id] = @owner.id
			redirect_to owner_path(@owner)
		else
			render :new
		end
	end

	def show
		
		if owner_logged_in?
		
			@owner = Owner.find_by(id: session[:owner_id])
		else
			redirect_to owners_path
		end

	end

	def edit

	end

	def update

	end

	private

		def owner_params
			params.require(:owner).permit(:name, :username, :password, :email)
		end


end