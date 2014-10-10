class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	scope :subscribed, ->(followeds) { where user_id: followeds }

	def display_tag
		tags = [' ','Salad', 'Soup', 'Seafood', 'Meat/Poultry', 'Dessert']
		tags[self.tag.to_i]
	end

end
