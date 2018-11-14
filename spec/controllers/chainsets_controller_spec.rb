# == Schema Information
#
# Table name: chainsets
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  manufacturer :string
#  weight       :integer          default(0)
#  price        :decimal(5, 2)    default(0.0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe ChainsetsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
