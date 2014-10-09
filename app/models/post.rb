class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def display_tag
		tags = [' ','Salad', 'Soup', 'Seafood', 'Meat/Poultry', 'Dessert']
		tags[self.tag.to_i]
	end
end
