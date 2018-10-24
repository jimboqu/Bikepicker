require 'rails_helper'

RSpec.feature "Bikes", type: :feature do
  scenario "login and do something" do
    user = FactoryBot.create(:user)
    visit root_path
    click_link "Log in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password 
    click_link "Log in"

    expect {
    	click_link "Your Bikes"
    	expect(page).to have_content "bikes"
    }

  end
end
