require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid with a name" do
  	user = User.create(name: "james", email: "james@hotmail.com", password: "moorohurst",)
  	expect(user).to be_valid
    
  end

  it "user is not valid without a email" do
	user = User.create(name: "james", email: "", password: "moorohurst",)
	expect(user).to_not be_valid
    
  end
end
