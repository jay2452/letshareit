class Subject < ActiveRecord::Base
	has_many :uploads
	belongs_to :branch
	has_many :user_preferences
	has_many :users, :through => :user_preferences

	# searchable do
	# 	text :name, boost: 5
	# 	text :code
	# end
end
