class SessionsController < ApplicationController

	def new
		
	end

	def create
		@user = User.where(email: params[:email]).first
		if @user && @user.password == params[:password]
			session[:user_id] = @user.id
			flash[:notice] = "You've successfully logged in."
			redirect_to @user
		else
			flash[:alert] = "There was a problem logging you in. Please try again or create an account."
			render :new
		end
	end

	def destroy
		@user = User.find(session[:user_id])
		session[:user_id] = nil
		redirect_to @user
	end

end