require "rails_helper"

describe Quote do
	it 'should be there' do |q|
		Quote.create(text: %Q{Something pithy}, author: %Q{Ugg Blog}, created_at: DateTime.new)
	end
	it 'should have a text property' do
		
	end
end