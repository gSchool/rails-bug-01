require 'rails_helper'
require 'capybara/rails'
# regards to time
feature 'created_at' do
    # Less than a minute ago
    scenario 'Time that is created less than a minute, will have the words "less than a minute"' do

    end
    # More than a minute
    scenario 'Time that is created more than a minute will be rounded to the nearest minute' do

    end
end
