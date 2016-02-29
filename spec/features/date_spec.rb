require 'rails_helper'
require 'capybara/rails'

feature 'created_at' do

	scenario 'Users can view less than a minute ago for quotes without created_at' do
		create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy})
    Quote.create!(text: %Q{Something cool})

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("less than a minute ago")
  end
end