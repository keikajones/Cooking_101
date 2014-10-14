module ApplicationHelper

	def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil	
	end

	def display_tag
		tags = [' ','Salad', 'Soup', 'Seafood', 'Meat/Poultry', 'Dessert']
		tags[self.tag.to_i]
	end

	def return_post_path(post)
		case post.tag
		when "1"
			salads_path
		when "2"
			soups_path
		when "3"
			seafood_path
		when "4"
			meat_path
		when "5"
			desserts_path
		else
			homepage_path
		end
	end

end
