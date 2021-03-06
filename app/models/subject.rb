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


	  def same_subject_uploads
	    #sids = Subject.where(code: self.code ).select(id).map(&:id)
			# sids = "SELECT id from subjects where code = '#{self.code}'"


			sids1 = Subject.where("code = ?", self.code).first.id
			# puts "-----------------------------"
			# 	p Subject.where(sids)
			# puts "-----------------------------"
			# ups = Upload.where("subject_id IN (#{sids}) AND approved = ?", true)
			ups = Upload.where("subject_id = ? AND approved = ?", sids1, true)

			puts "-----------------------------"
				p ups
				puts sids1
			puts "-----------------------------"

			return ups
	  end

		def same_subject_links
			# sids = "SELECT id from subjects where code = '#{self.code}'"
			sids1 = Subject.where("code = ?", self.code).first.id
			Link.where("subject_id = ? AND approved = ?", sids1, true)
		end

end
