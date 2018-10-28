require 'rails_helper'

RSpec.feature "Pages", type: :feature do
    scenario "Check helper working on static pages" do

    user = FactoryBot.create(:user)
    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password 
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password 
    click_button "Log in"
    click_link "Make a Bike"
    expect(page).to have_text "Bike#new"
    
    
    
    
  end

  scenario "new user sees registration" do
 	
    visit root_path

    expect {
    	click_link "Register"
    	expect(page).to have_content "Sign up"
    }

  end
end
