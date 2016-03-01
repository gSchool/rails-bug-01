require 'rails_helper'
require 'capybara/rails'

feature 'created_at' do
    scenario 'div.created will render' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy}, author: %Q{Buddy Hackett}, created_at: (Date.today-1), updated_at: (Date.today-1))
    Quote.create!(text: %Q{Something cool}, author: %Q{Buddy Hackett}, created_at: (Date.today-1), updated_at: (Date.today-1))

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_selector("div.created", text: /.+/)
  end

    scenario 'Users can view relative timestamp' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy}, author: %Q{Buddy Hackett}, created_at: (Date.today-1), updated_at: (Date.today-1))

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("2 days ago")
  end


end