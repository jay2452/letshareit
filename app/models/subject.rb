class Subject < ActiveRecord::Base
	has_many :uploads
	belongs_to :branch
end
