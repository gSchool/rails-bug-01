class Quote < ActiveRecord::Base
	validates :text, :author, :created_at, presence: true
end