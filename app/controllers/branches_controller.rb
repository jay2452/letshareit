class BranchesController < ApplicationController
  def index
    @branches = Branch.all
  end

  def show
    @branch = Branch.find_by(:name => params[:name])
    puts "----------------------------"
      puts @branch
    puts "---------------------------------"
    @subjects = Subject.where("branch_id = ?", @branch.id)
  end
end
