class ProfileController < ApplicationController
	impressionist :unique => [:controller_name, :action_name, :session_hash]
	before_action :authenticate_user!
  def show
  	@user = current_user

  	@unapprovedUploads = Upload.where("user_id = ? AND approved = ?", current_user.id, false).order(created_at: :desc)
  	@approvedUploads = Upload.where("user_id = ? AND approved = ?", current_user.id, true).order(created_at: :desc)

  	@unapprovedLinks = Link.where("user_id = ? AND approved = ?", current_user.id, false).order(created_at: :desc)
  	@approvedLinks = Link.where("user_id = ? AND approved = ?", current_user.id, true).order(created_at: :desc)

  	@user_preference = UserPreference.new
  end
end
