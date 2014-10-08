class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

	def index
		@comments = Comment.all
	end

	def show
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.post = Comment.find(current_post)
		if @comment.save
			flash[:notice] = "Thank you for your comment"
			redirect_to @post
		else
			flash[:alert] = "There was a problem posting your comment."
			render :new
		end
	end

	def edit
		#@comment = Comment.find(params[:id])
		@post = Post.find(params[:id])
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
		params.require(:comment).permit(:body)
	end

	def set_comment
		@comment = Comment.find(params[:id])
	end

end














