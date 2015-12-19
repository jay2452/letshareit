class Branch < ActiveRecord::Base

	include FriendlyId
	friendly_id :name, use: :slugged
	has_many :users
	has_many :subjects

	validates :name, presence: true, uniqueness: true

	# searchable do
	# 	text :name
	# end
end
