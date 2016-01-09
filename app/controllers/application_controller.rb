class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  config.relative_url_root = ""

  before_action :query_check


  private

  def query_check

    # search = params[:q]
    # @upload_search_result = Upload.search(name_cont: search).result
    # @branch_search_result = Branch.search(name_cont: search).result
    # @link_search_result = Link.search(name_cont: search).result

    # @results = @upload_search_result + @link_search_result

    # puts "========================"
    #   puts @results
    # puts "========================"

    @query_length_check = params[:q][:topic_cont].strip.length if params[:q] # => for only blank search i.e enter only a single white space in search bar

    @query_one = Upload.search(params[:q])
    @upload_search_result = @query_one.result

    @query_two = Branch.search(params[:q])
    @branch_search_result = @query_two.result

    @query_three = Subject.search(params[:q])
    @subject_search_result = @query_three.result

    @query_four = Link.search(params[:q])
    @link_search_result = @query_four.result
  end
end
