# == Schema Information
#
# Table name: bikes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  frame_id    :integer
#  wheel_id    :integer
#  weight      :integer
#  chainset_id :integer
#

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

	  it "does allow an unsigned user to get in" do
      get :index
      expect(response).to be_success
    end

    it "won't allow unsigned user to view new" do
      get :new
      expect(response).to redirect_to new_user_session_path
    end

    it "won't allow unsigned user to view edit" do
      bike = FactoryBot.create(:bike)
      get :edit, params: {id: bike.id}
      expect(response).to redirect_to root_path
    end

    it "allows an unsigned in user to view a bike" do
      bike = FactoryBot.create(:bike)
      get :show, params: {id: bike.id}
      expect(response).to be_success
    end
    
  end
end
