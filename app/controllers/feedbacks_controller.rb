class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.new(feedback_params)

    @feedback.save
    redirect_to :back
  end

  private
    def feedback_params
      params.require(:feedback).permit(:user_name, :email, :content)
    end
end
