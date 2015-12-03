class HomePagesController < ApplicationController
  def index
  	@subjects = Subject.all
  	@upload = Upload.new
    @link = Link.new
  end

  def team
  	
  end

  def search
  	@query_one = Upload.search(params[:q])
    @upload_search_result = @query_one.result

    @query_two = Branch.search(params[:q])
    @branch_search_result = @query_two.result

    @query_three = Subject.search(params[:q])
    @subject_search_result = @query_three.result
    
  end
end
