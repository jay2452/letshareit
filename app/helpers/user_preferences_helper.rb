module UserPreferencesHelper
	def all_subjects
		Subject.where("branch_id = ?", current_user.branch_id)
	end
end
