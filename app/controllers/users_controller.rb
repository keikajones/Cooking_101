class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy, :follow, :unfollow]


	def follow
		@rel = Relationship.new(follower_id: current_user.id, followed_id: @user.id)
		if @rel.save
			flash[:notice] = "Followed!"
			redirect_to @user
		else
			flash[:alert] = "Could not follow"
			redirect_to @user
		end
	end

	def unfollow
		@rel = Relationship.where(follower_id: current_user.id, followed_id: @user.id).first
		if @rel and @rel.destroy
			flash[:notice] = "Unfollowed!"
			redirect_to @user
		else
			flash[:alert] = "Could not unfollow"
			redirect_to @user
		end
	end

	def index
		@users = User.all
	end

	def show
		@post = Post.new
	end

	def new
		@user = User.new
		@post = Post.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "You created an account. Welcome to Cooking 101!"
			redirect_to @user
		else
			flash[:alert] = "Could not create an account."
			render :new
		end

		@post = Post.new(params[:post_id])
		#@post.user = User.find(session[:user_id])
		if @post.save
			flash[:notice] = "New post!"
			redirect_to @post
		else
			flash[:notice] = "Could not create post"
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:notice] = "Account updated!"
			redirect_to @user
		else
			flash[:alert] = "Could not update account"
			render :edit
		end
	end

	def destroy
		if @user.destroy
			flash[:notice] = "Account deleted"
			redirect_to users_path
		else
			flash[:alert] = "Could not delete account."
			redirect_to users_path
		end
	end

	private
	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password)
	end

	def set_user
		@user = User.find(params[:id])
	end
end