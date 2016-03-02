require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

  scenario 'Users can view quotes' do
    # create_user email: "user@example.com"
    Quote.create!(text: %Q{Something pithy})
    Quote.create!(text: %Q{Something cool})
    login
    expect(page).to have_content("Something pithy")
    expect(page).to have_content("Something cool")
  end
  scenario 'quotes will be created_at now()' do
    Quote.create!(text: %Q{Something cool})
    login
    expect(find('div.created')).to have_content(/less than a minute/)
  end

end
