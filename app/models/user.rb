class User < ActiveRecord::Base
	has_many :posts
	has_many :relationships, foreign_key: :follower_id, dependent: :destroy
	has_many :followeds, through: :relationships
	has_many :reverse_relationships, foreign_key: :followed_id, class_name: "Relationship", dependent: :destroy
	has_many :followers, through: :reverse_relationships, source: :follower
	has_many :comments
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_presence_of :fname, :lname, :email, :password

	def display_level
		levels = [' ', 'Line Cook', 'Sous Chef', 'Executive Chef']
		levels[self.level.to_i]
	end
end
