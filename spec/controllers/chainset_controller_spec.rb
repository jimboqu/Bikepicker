require 'rails_helper'

RSpec.describe ChainsetController, type: :controller do

  describe "GET #name:string" do
    it "returns http success" do
      get :name:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #manufacturer:string" do
    it "returns http success" do
      get :manufacturer:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #weight:integer" do
    it "returns http success" do
      get :weight:integer
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #price:decimal{5,2}" do
    it "returns http success" do
      get :price:decimal{5,2}
      expect(response).to have_http_status(:success)
    end
  end

end
