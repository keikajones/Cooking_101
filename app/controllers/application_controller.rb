class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil
	end

	def display_tag
		tags = [' ','Salad', 'Soup', 'Seafood', 'Meat/Poultry', 'Dessert']
		tags[self.tag.to_i]
	end

	def display_level
		levels = [' ', 'Line Cook', 'Sous Chef', 'Executive Chef']
		levels[self.level.to_i]
	end

end
