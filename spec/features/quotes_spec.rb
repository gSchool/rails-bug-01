require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

  scenario 'Users can view quotes' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy}, author: %Q{Buddy Hackett}, created_at: (Date.today-1), updated_at: (Date.today-1))

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("Something pithy")
  end

end
