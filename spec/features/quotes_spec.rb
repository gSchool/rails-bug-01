require 'rails_helper'
require 'capybara/rails'
require 'time_ago_in_words'

feature 'Auth' do

  scenario 'Users can view quotes' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy})
    Quote.create!(text: %Q{Something cool})

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("Something pithy")
    expect(page).to have_content("Something cool")
  end

end
