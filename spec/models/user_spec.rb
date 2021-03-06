# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  roles                  :string
#

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
