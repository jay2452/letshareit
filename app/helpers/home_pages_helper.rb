module HomePagesHelper

	#def recent_uploads
	#	arr = []
	#	current_user.feeds.each do |f|
	#		arr << f.topic
	#	end
	#	return arr
	#end

	def user_upload_preferences
		@branch_subjects = Subject.where("branch_id = ?", current_user.branch_id)
	end
end
