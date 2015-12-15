class RemoveBranchFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :branch, :string
  end
end
