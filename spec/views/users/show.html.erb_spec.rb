require 'rails_helper'

RSpec.describe "users/show", :type => :view do
	before(:each) do
		@user = assign(:user, User.create!(
			:fname => "FName",
			:lname => "LName",
			:email => "Email", 
			:password => "Password",
			:level => "Level"
		))
	end

	it "renders attributes in <p>" do
		render
		expect(rendered).to match(/FName/)
	end
end