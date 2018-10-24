require 'rails_helper'

RSpec.describe Bike, type: :model do
  it "is invalid if it doesn't have a name" do
    bike = FactoryBot.build(:bike, name: "" )
    expect(bike).to_not be_valid
  end

  it "is valid if it does have a name" do
    user = User.create(name: "James", email: "james@hotmail.com", password: "moorohust")
    bike = user.bikes.build(name: "bike1", description: "yeah" )
    expect(bike).to be_valid
  end

  it "generates associates data from a factory" do
    bike = FactoryBot.create(:bike)
    puts "This is the projects user #{bike.user.inspect}"
    puts "this is the projects frame #{bike.frame.inspect}"
  end

  it "is valid if it has a diff name and user" do
    bike1 = FactoryBot.create(:bike)
    bike2 = FactoryBot.build(:bike)
    expect(bike2).to be_valid
  end

  it "is invalid if it has a diff name and user" do
    bike1 = FactoryBot.create(:bike, name: "jim")
    bike2 = FactoryBot.build(:bike, name: "jim")
    expect(bike2).to be_valid
  end
end
