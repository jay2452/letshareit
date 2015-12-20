class BranchesController < ApplicationController
impressionist :unique => [:controller_name, :action_name, :session_hash]
  def index
    @branches = Branch.all
  end

  def show
    @branch = Branch.friendly.find(params[:id])#find_by(:name => params[:name])

    @subjects = Subject.where("branch_id = ?", @branch.id)

    respond_to do |format|
      format.html
      format.js
    end

  end
end
