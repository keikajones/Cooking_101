class CommentsController < ApplicationController
	before_action :set_comment, only: [:edit, :update, :destroy]

	def new
		@comment = Comment.new
		@post = Post.find(params[:post_id])
	end

	def create
		@user = User.find(session[:user_id])
		@post = Post.find(params[:post_id]) 
		@post.user = User.find(session[:user_id])
		@comment = Comment.new(comment_params)
		@comment.post = Post.find(params[:post_id])
		if @comment.save
			flash[:notice] = "Thank you for your comment"
			redirect_to post_path(@post)
		else
			flash[:alert] = "There was a problem posting your comment."
			render :new
		end
	end

	def edit
		@post = Post.find(params[:post_id])
	end

	def update
		@comment.user = User.find(session[:user_id])
		@user = User.find(session[:user_id])
		if @comment.update(comment_params)
			flash[:notice] = "You updated your comment"
			redirect_to post_path(@comment.post)
		else
			flash[:alert] = "There was a problem updating your comment"
			render :edit
		end
	end

	def destroy
		@comment.destroy
		flash[:notice] = "Comment deleted"
		redirect_to post_comment_path(@comment, @post)
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

	def set_comment
		@comment = Comment.find(params[:id])
	end

end














