require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

  scenario 'Users can view quotes' do

    Quote.create!(text: %Q{Something pithy})
    Quote.create!(text: %Q{Something cool})

    login

    expect(page).to have_content("Something pithy")
    expect(page).to have_content("Something cool")
  end

  scenario 'a quote will have a created_at value default to Time.now' do

    Quote.create!(text: %Q{Something cool})

    login

    expect(find('div.created')).to have_content(/less than a minute ago/);
  end

  scenario 'quote with created_at value will display the correct time ago message' do

    Quote.create!({
        text: %Q{Something cool},
        created_at: Time.parse("2014-07-12 03:40:54.4157")
    })

    login

    expect(find('div.created')).to have_content(/over 1 year ago/);
  end

end
