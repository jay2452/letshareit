class HomePagesController < ApplicationController
  impressionist :unique => [:controller_name, :action_name, :session_hash]
  def index
  	@subjects = Subject.all
  	@upload = Upload.new
    @unapprovedUploads = Upload.where("approved = ?", false)
    @unapprovedLinks = Link.where("approved = ?", false)
    @link = Link.new
    @fetch_recent = current_user.feeds.paginate(:page => params[:page], :per_page => 20).order(created_at: :desc) if current_user

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
    puts "======================================="
      # p params[:q][:topic_cont]
      p @upload_search_result.blank?
    puts "======================================="

    @upload_search_result = @query_one.result.paginate(:page => params[:page], :per_page => 20)


    @query_two = Branch.search(params[:q])
    @branch_search_result = @query_two.result

    @query_three = Subject.search(params[:q])
    @subject_search_result = @query_three.result

    @query_four = Link.search(params[:q])
    @link_search_result = @query_four.result.paginate(:page => params[:page], :per_page => 20)

  end

  def all_subjects

  end

end
