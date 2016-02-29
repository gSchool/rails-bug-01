require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

  scenario 'Users can view quotes' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy}, author: %Q{Ugg Blog}, created_at: DateTime.new)
    Quote.create!(text: %Q{Something cool}, author: %Q{something else}, created_at: DateTime.new)

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("Something pithy")
    expect(page).to have_content("Something cool")
  end
end
