require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do 
  @user = FactoryBot.build(:user)
end

  it "user is valid with a name" do
  	expect(@user).to be_valid
  end

  it "user is not valid without a email" do
  	user = FactoryBot.build(:user, email: "")
	expect(user).to_not be_valid
  end
end
