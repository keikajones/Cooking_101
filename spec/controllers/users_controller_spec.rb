require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	let(:user){FactoryGirl.build(:user)}
	let(:invalid_user){FactoryGirl.build(:invalid_user)}
	let(:session){FactoryGirl.build(:session)}
	let(:post){FactoryGirl.build(:post)}
	let(:valid_session) { {user_id: 1}}

	let(:valid_user){
		@valid_user = {
			fname:"Keika",
			lname: "Jones",
			email: "keika.jones@gmail.com",
			password: "keika",
			level: 2
		}
	}

	describe "GET show" do
		it "assigns the requested user as @user" do
			user = create(:user)
			get :show, {id: user.to_param}, attributes_for(:session)
			expect(assigns(:user)).to eq(user)
		end

		xit "shows all the requested users' posts" do
			user = create(:user)
			post = create(:post)
			get :show, {id: user.to_param, post_id: post.to_param}, attributes_for(:session)
			expect(assigns(:post)).to eq(post)
		end
	end

	describe "GET new" do
		it "assigns a new user as @user" do
			get :new, {}, attributes_for(:user)
			expect(assigns(:user)).to be_a_new(User)
		end
	end

	describe "GET edit" do
		it "assigns the requested user as @user" do
			user = create(:user)
			get :edit, {id: user.to_param}, attributes_for(:session)
			expect(assigns(:user)).to eq(user)
		end
	end

	describe "DELETE destroy" do
		it "destroys the requested user" do
			user = create(:user)
			expect {
				delete :destroy, {id: user.to_param}, attributes_for(:session)
			}.to change(User, :count).by(-1)
		end

		it "redirects to the dogs list" do
			user = create(:user)
			delete :destroy, {id: user.to_param}, attributes_for(:session)
			expect(response).to redirect_to(users_path)
		end
	end

	describe "POST create" do
		describe "with valid params" do
			it "creates a new user" do
				# expect {
				# 	post :create, {user: attributes_for(:user)}, attributes_for(:session)
				# }.to change(User, :count).by(1)


				# expect {
				# 	atts = attributes_for(:user)
				# 	post :create, {user: atts}, attributes_for(:session)
				# }.to change(User, :count).by(1)

				atts = attributes_for(:user)
				debugger
				post :create, {user: invalid_user}, attributes_for(:session)
				# expect(User.count).to eq(1)
				# p attributes_for(:user).inspect
				# p attributes_for(:session).inspect
				
				# p attributes_for(:user).class
				# p valid_user.class
			end

			it "assigns a newly created user as @user" do
				post :create, {user: attributes_for(:user)}, attributes_for(:session)
				expect(assigns(:user)).to be_a(User)
				expect(assigns(:user)).to be_persisted
			end

			it "redirects to the created user" do
				post :create, {user: attributes_for(:user)}, attributes_for(:session)
				expect(response).to redirect_to(User.last)
			end
		end

		describe "with invalid params" do
			it "assigns a newly created but unsaved user as @user" do
				post :create, {user: attributes_for(:invalid_user)}, attributes_for(:session)
				expect(assigns(:user)).to be_a_new(User)
			end

			it "re-renders the 'new' template" do
				post :create, {user: attributes_for(:invalid_user)}, attributes_for(:session)
				expect(response).to render_template :new
			end
		end
	end

	describe "PUT update" do
		describe "with valid params" do

			it "updates the requested user" do
				user = create(:user)
				put :update, {id: user.to_param, user: attributes_for(:new_user)}, attributes_for(:session)
				user.reload
				expect(user.fname).to eq("Hayoko")
			end

			it "assigns the requested user as @user" do
				user = create(:user)
				put :update, {id: user.to_param, user: attributes_for(:new_user)}, attributes_for(:session)
				expect(assigns(:user)).to eq(user)
			end

			it "redirect to the updated user" do
				user = create(:user)
				put :update, {id: user.to_param, user: attributes_for(:new_user)}, attributes_for(:session)
				expect(response).to redirect_to(user)
			end
		end

		describe "with invalid params" do
			it "assigns the user as @user" do
				user = create(:user)
				put :update, {id: user.to_param, user: attributes_for(:invalid_user)}, attributes_for(:session)
				expect(assigns(:user)).to eq(user)
			end

			it "re-renders the 'edit' template" do
				user = create(:user)
				put :update, {id: user.to_param, user: attributes_for(:invalid_user)}, attributes_for(:session)
				expect(response).to render_template :edit
			end
		end
	end

end



















