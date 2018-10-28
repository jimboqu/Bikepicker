require 'rails_helper'

RSpec.feature "Bikes", type: :feature do

  scenario "login and do something" do
    user = FactoryBot.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password 
    click_button "Log in"

    expect {
    	click_link "Your Bikes"
    	expect(page).to have_content "bikes"
    }

  end

  scenario "login and create a bike" do
    user = FactoryBot.create(:user)
    visit root_path
    click_link "Sign in"
    
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    expect {
      click_link "Make a Bike"
      fill_in "Name", with: "Bike1"
      fill_in "Description", with: "Another bike"
      click_button "Create Bike"
    }.to change(user.bikes, :count).by(1)

  end
end
