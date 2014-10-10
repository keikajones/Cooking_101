module ApplicationHelper

	def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil	
	end

	def display_tag
			tags = [' ','Salad', 'Soup', 'Seafood', 'Meat/Poultry', 'Dessert']
			tags[self.tag.to_i]
	end

end
