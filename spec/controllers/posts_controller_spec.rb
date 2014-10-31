require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
	
	let(:valid_attributes) {
		@valid_attributes = {
			title: "Nuts for Salads",
			body: "Hey, so I'm making a simple beet and spinach salad and thought it would be a great idea to add some sort of nuts to the mix. What kind of nut would you guys recommend?",
			tag: "Salad",
			user_id: 1
		}
	}

	let(:invalid_attributes) {
		@invalid_attributes = {
			body: nil
		}
	}

	let(:valid_session) { {user_id: 1} }

	describe "GET show" do
		it "assigns the requested post as @post" do
			post = Post.create! valid_attributes
			get :show, {id: post.to_param}, valid_session
			expect(assigns(:post)).to eq(post)
		end
	end

	describe "GET edit" do
		it "assigns the requested post as @post" do
			post = Post.create! valid_attributes
			get :edit, {id: post.to_param}, valid_session
			expect(assigns(:post)).to eq(post)
		end
	end

	describe "PUT update" do
		describe "with valid params" do

			let(:new_attributes) {
				@new_attributes = {
					title: "Salad Help",
					body: "Hey, so I'm making a simple beet and spinach salad and thought it would be a great idea to add some sort of nuts to the mix. What kind of nut would you guys recommend?",
					tag: "Salad",
					user_id: 1
				}
			}

			xit "updates the requested post" do
				post = Post.create! valid_attributes
				put :update, {id: post.to_param, post: new_attributes}, valid_session
				post.reload
				expect(post.title).to eq('Salad Help')
			end

			xit "assigns the requested post as @post" do
				post = Post.create! valid_attributes
				put :update, {id: post.to_param, post: new_attributes}, valid_session
				expect(assigns(:post)).to eq(post)
			end
		end
	end
end



















