class Quote < ActiveRecord::Base
	validates :created_at, presence: true
	validates :updated_at, presence: true
end
