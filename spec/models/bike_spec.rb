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
#

require 'rails_helper'

RSpec.describe Bike, type: :model do
  it "is invalid if it doesn't have a name" do
    user = User.create(name: "James", email: "james@hotmail.com", password: "moorohust")
    bike = user.bikes.build(name: nil, description: "yeah" )
    expect(bike).to_not be_valid
  end

  it "is valid if it does have a name" do
    user = User.create(name: "James", email: "james@hotmail.com", password: "moorohust")
    bike = user.bikes.build(name: "bike1", description: "yeah" )
    expect(bike).to be_valid
  end
end
