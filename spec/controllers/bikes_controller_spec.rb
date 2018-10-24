require 'rails_helper'

RSpec.describe BikesController, type: :controller do
  describe "tests on authentication" do

    before(:each) do
      @user = FactoryBot.create(:user)
    end

    it "allows an authenticated user to log in" do
      sign_in @user
      get :index
      expect(response).to be_success
	end

	it "does not allow an unsigned user to get in" do
      get :index
      expect(response).to redirect_to root_path
    end
  end
end
