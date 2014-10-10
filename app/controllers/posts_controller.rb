class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def show
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		#@post.user = User.find(session[:user_id])
		if @post.save
			flash[:notice] = "New post!"
			redirect_to current_user
		else
			flash[:notice] = "Could not create post"
			render :new
		end
	end

	def edit
	end

	def update
		if @post.update(post_params)
			flash[:notice] = "Post updated!"
			redirect_to @post
		else
			flash[:alert] = "Something went wrong."
			render :edit
		end
	end

	def destroy
		@post.destroy
		flash[:notice] = "Post deleted!"
		redirect_to current_user
	end

	private
	def post_params
		params.require(:post).permit(:body, :tag).merge(user_id: current_user.id)
	end

	def set_post
		@post = Post.find(params[:id])
	end
end