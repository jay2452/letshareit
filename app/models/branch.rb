class Branch < ActiveRecord::Base
	has_many :users
	has_many :subjects

	searchable do
		text :name
	end
end
