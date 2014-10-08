class CommentsController < ApplicationController
	before_action :set_comment, only: [:edit, :update, :destroy]

	def new
		@comment = Comment.new
		@post = Post.find(params[:post_id])
	end

	def create
		@post = Post.find(params[:comment][:id])
		@comment = @post.comment.new(comment_params)
		if @comment.save
			flash[:notice] = "Thank you for your comment"
			redirect_to @post
		else
			flash[:alert] = "There was a problem posting your comment."
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		if @comment.update(comment_params)
			flash[:notice] = "You updated your comment"
			redirect_to post_path
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
		params.require(:comment).permit(:body)
	end

	def set_comment
		@comment = Comment.find(params[:id])
	end

end














