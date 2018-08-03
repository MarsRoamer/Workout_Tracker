class CommentsController < ApplicationController

	def index

	end

	def new

	end

	def create
		
		comment = Comment.create(comment_params)
		render json: comment

	end

	private

		def comment_params
			params.require(:comment).permit(:comment, :workout_id, :name)
		end

end