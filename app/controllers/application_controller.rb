require 'pry'

class ApplicationController < ActionController::Base


	def home

	end

	def owner_logged_in?
		!!current_owner
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
end
