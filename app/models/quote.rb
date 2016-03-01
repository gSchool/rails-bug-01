class Quote < ActiveRecord::Base
	validates :created_at, presence: true
end