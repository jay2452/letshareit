class HomePagesController < ApplicationController
  def index
  	@subjects = Subject.all
  	@upload = Upload.new
    @unapprovedUploads = Upload.where("approved = ?", false)
    @unapprovedLinks = Link.where("approved = ?", false)
    @link = Link.new
  end

  def team
  	@feedback = Feedback.new
  end

  def upload_approval
      idArray = []
      params.each do |key, value|
        idArray << key.to_i if value.to_i==1
      end
      toBeApprovedUploads = Upload.where("id IN (?)", idArray)
      toBeApprovedUploads.each do |u|
        u.approved = true
        u.save
      end
      redirect_to root_path
  end

  def link_approval
      idArray = []
      params.each do |key, value|
        idArray << key.to_i if value.to_i==1
      end
      toBeApprovedLinks = Link.where("id IN (?)", idArray)
      toBeApprovedLinks.each do |u|
        u.approved = true
        u.save
      end
      redirect_to root_path
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
