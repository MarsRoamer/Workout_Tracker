require 'pry'

class ApplicationController < ActionController::Base


	def home
		if owner_logged_in?
			redirect_to owner_path(current_owner)
		elsif user_logged_in?
			redirect_to user_path(current_user)
		end
		
	end

	def owner_logged_in?
		!!current_owner
	end

	def user_logged_in?
		!!current_user
	end


	private

		def current_user
	      @current_user ||= User.find(session[:user_id]) if session[:user_id]
	    end

	    def current_owner
	    	@current_owner ||= Owner.find(session[:owner_id]) if session[:owner_id]
	    end

	    helper_method :current_user
	    helper_method :current_owner
	    helper_method :owner_logged_in?
	    helper_method :user_logged_in?
end
