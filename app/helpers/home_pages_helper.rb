module HomePagesHelper

	def recent_uploads
		arr = []
		current_user.feeds.each do |f|
			arr << f.topic
		end
		return arr
	end
end
