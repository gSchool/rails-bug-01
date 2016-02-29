require 'rails_helper'
require 'capybara/rails'
require 'action_view'
require 'action_view/helpers'
require 'date'
include ActionView::Helpers::DateHelper

feature 'Auth' do

  scenario 'Users can view quotes' do
    create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy}, created_at:(Date.today));
    Quote.create!(text: %Q{Something cool}, created_at:(Date.yesterday));

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content("Something pithy")
    expect(page).to have_content("Something cool")
    expect(page).to have_content("about 24 hours ago")
    expect(page).to have_content("2 days ago");

  end


end
