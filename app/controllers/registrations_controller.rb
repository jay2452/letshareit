class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
      root_path(resource)
  end

  private
  def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :branch_id, :about_me)
    end

    def account_update_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :branch_id, :about_me)
    end
end
