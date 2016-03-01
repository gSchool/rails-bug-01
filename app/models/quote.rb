class Quote < ActiveRecord::Base
	is_complete

	validates :text, presence:true
	validates :author, presence:true
	validates :created_at, presence:true
	validates :updated_at, presence:true
end