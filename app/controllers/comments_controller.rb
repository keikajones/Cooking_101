class CommentsController < ApplicationController
	before_action :set_comment, only: [:edit, :update, :destroy]

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "Thank you for your comment"
			redirect_to @post
		else
			flash[:alert] = "There was a problem posting your comment."
			render :new
		end
	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			flash[:notice] = "You updated your comment"
			redirect_to @post
		else
			flash[:alert] = "There was a problem updating your comment"
			render :edit
		end
	end

	def destroy
		@comment.destroy
		flash[:notice] = "Comment deleted"
		redirect_to users_path
	end

	private

	def comment_params
		params.require(:comment).permit(:body).merge(user_id: current_user.id)
	end

	def set_comment
		@comment = Comment.find(params[:id])
	end
	
end














