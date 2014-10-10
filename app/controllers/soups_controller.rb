class SoupsController < ApplicationController

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

end