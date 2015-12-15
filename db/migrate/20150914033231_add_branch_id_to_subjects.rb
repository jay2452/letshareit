class AddBranchIdToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :branch, index: true, foreign_key: true
  end
end
