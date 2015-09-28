class Subject < ActiveRecord::Base
	has_many :uploads
	belongs_to :branch

	# searchable do
	# 	text :name, boost: 5
	# 	text :code
	# end
end
