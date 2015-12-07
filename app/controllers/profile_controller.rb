class ProfileController < ApplicationController
	before_action :authenticate_user!
  def show
  	@user = current_user
  	@uploads = Upload.where(user_id: current_user.id).order(created_at: :desc)
  	@links = Link.where(user_id: current_user.id).order(created_at: :desc)
  	@user_preference = UserPreference.new
  end
end
