class Quote < ActiveRecord::Base
	
	validates :text, :author, :created_at, presence: true,allow_blank: false
	
end