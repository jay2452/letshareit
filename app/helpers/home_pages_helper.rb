module HomePagesHelper

	def user_upload_preferences
		@branch_subjects = Subject.where("branch_id = ?", current_user.branch_id)
	end

	def recent_uploads(branch)
		subject_ids = Subject.where('branch_id = ?', branch.id).select(:id).map(&:id)
		Upload.where("subject_id IN (?)", subject_ids).order(created_at: :desc).limit(7)
	end

	def recent_links(branch)
		subject_ids = Subject.where('branch_id = ?', branch.id).select(:id).map(&:id)
		Link.where("subject_id IN (?)", subject_ids).order(created_at: :desc).limit(7)
	end


end
