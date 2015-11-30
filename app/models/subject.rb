class Subject < ActiveRecord::Base
	has_many :uploads
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
