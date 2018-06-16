class SessionsController < ApplicationController


	def new
		@session = User.new
	end

	def create
		

	  if params[:provider] == "google_oauth2"
	  	
		 user = User.from_omniauth(request.env["omniauth.auth"])
         session[:user_id] = user.id
         redirect_to user_path(user)
      else

		user = User.find_by(username: params[:username])
		
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id 
			redirect_to user_path(user)
		else
			render 'new'
		end
	  end
	end
	

	def destroy
		session.clear
		redirect_to root_path
	end


end