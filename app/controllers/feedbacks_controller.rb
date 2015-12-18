class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if current_user
      @feedback.user_name = current_user.name
      @feedback.email = current_user.email
    end

    if @feedback.save
      redirect_to :back , notice: "successfully submitted !!"
    else
      redirect_to :back
    end

  end

  private
    def feedback_params
      params.require(:feedback).permit(:user_name, :email, :content)
    end
end
