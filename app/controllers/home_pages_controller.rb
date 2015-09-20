class HomePagesController < ApplicationController
  def index
  	@subjects = Subject.all
  	@upload = Upload.new
  end

  def team
  	
  end

  def search
  	@query_one = Upload.search do
      fulltext params[:search]
    end
    @upload_search_result = @query_one.results

    @query_two = Branch.search do
      fulltext params[:search]
    end
    @branch_search_result = @query_two.results

    @query_three = Subject.search do
      fulltext params[:search]
    end
    @subject_search_result = @query_three.results
    
  end
end
