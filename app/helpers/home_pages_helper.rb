module HomePagesHelper

	def recent_uploads
		Upload.where("user_id = ?", current_user.id)
	end
end
