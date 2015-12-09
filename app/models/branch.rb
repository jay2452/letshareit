class Branch < ActiveRecord::Base
	has_many :users
	has_many :subjects

	validates :name, presence: true, uniqueness: true

	# searchable do
	# 	text :name
	# end
end
