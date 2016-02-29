require 'rails_helper'
require 'capybara/rails'
# regards to time
feature 'created_at' do
    # Less than a minute ago
    scenario 'Time that is created less than a minute, will have the words "less than a minute"' do
        create_user email: "user@example.com"
        Quote.create!(text: %Q{You can't buy me love}, author: %Q{John Lennon})
        visit root_path
        click_on "Login"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "password"
        click_on "Login"
        expect(page).to have_content("less than a minute ago")
    end

    # More than a minute
    scenario 'Time that is created more than a minute will be floored depending on time length' do
        create_user email: "user@example.com"
        Quote.create!(text: %Q{You can't buy me love}, author: %Q{Paul McCartney}, created_at: (Date.today-10), updated_at: (Date.today-9))
        visit root_path
        click_on "Login"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "password"
        click_on "Login"
        expect(page).to have_content("11 days ago")
    end

    # Check for failing
    scenario 'Time that is created more than a minute will be floored depending on time length' do
        create_user email: "user@example.com"
        Quote.create!(text: %Q{You can't buy me love}, author: %Q{Paul McCartney}, created_at: (Date.today-10), updated_at: (Date.today-9))
        visit root_path
        click_on "Login"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "password"
        click_on "Login"
        expect(page).to_not have_content('foo')
    end
end
