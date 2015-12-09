class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  config.relative_url_root = ""

  before_action :query_check


  private

  def query_check
  	
    @query_one = Upload.search(params[:q])
    @upload_search_result = @query_one.result

    @query_two = Branch.search(params[:q])
    @branch_search_result = @query_two.result

    @query_three = Subject.search(params[:q])
    @subject_search_result = @query_three.result
  end
end
