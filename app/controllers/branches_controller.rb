class BranchesController < ApplicationController
  def index
    @branches = Branch.all
  end

  def show
    @branch = Branch.friendly.find(params[:id])#find_by(:name => params[:name])
    puts "----------------------------"
      puts @branch.name
    puts "---------------------------------"
    @subjects = Subject.where("branch_id = ?", @branch.id)

    puts "----------------------------"
      p @subjects
    puts "---------------------------------"

    
  end
end
