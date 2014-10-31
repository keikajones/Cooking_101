FactoryGirl.define do
	
	factory :post do
		title "Nuts for Salads"
		body "Hey, so I'm making a simple beet and spinach salad and thought it would be a great idea to add some sort of nuts to the mix. What kind of nut would you guys recommend?"
		tag "Salad"
		user_id 1
	end

	factory :invalid_post, :class => 'Post' do
		body nil
	end
end