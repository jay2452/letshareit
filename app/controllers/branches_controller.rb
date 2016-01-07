class BranchesController < ApplicationController
impressionist :unique => [:controller_name, :action_name, :session_hash]
  def index
    @branches = Branch.all
  end

  def show
    @branch = Branch.friendly.find(params[:id])#find_by(:name => params[:name])

    # @subjects = Subject.where("branch_id = ?", @branch.id)
    @subjects = @branch.subjects.order(id: :asc)

    respond_to do |format|
      format.html
      format.js
    end

  end

  def uploads
    @branch = Branch.friendly.find(params[:id])
    @uploads = Upload.where("subject_id IN (?)", get_subject_ids )
  end

  def links
    @branch = Branch.friendly.find(params[:id])
    @links = Link.where("subject_id IN (?)", get_subject_ids )
  end


  private
    def get_subject_ids
      Subject.where("branch_id = ?", @branch.id).select(:id).map(&:id)
    end
end
