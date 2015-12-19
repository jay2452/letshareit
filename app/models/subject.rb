class Subject < ActiveRecord::Base
	include FriendlyId
	friendly_id :name, use: :slugged

	has_many :uploads
	has_many :links
	belongs_to :branch
	has_many :user_preferences
	has_many :users, :through => :user_preferences

	validates :name, presence: true
	validates :code, presence: true
	validates :branch_id, presence: true

	# searchable do
	# 	text :name, boost: 5
	# 	text :code
	# end
end
