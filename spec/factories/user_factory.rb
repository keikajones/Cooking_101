FactoryGirl.define do
	factory :user do
		fname "Keika" 
		lname "Jones"
		email "keika.jones@gmail.com"
		password "keika"
		level 2
	end

	factory :invalid_user, :class => 'User' do
		email nil
	end

	factory :new_user, :class => 'User' do
		fname "Hayoko" 
		lname "Jones"
		email "hayoko.jones@gmail.com"
		password "keika"
		level 2
	end
end
