class AddSlugToBranches < ActiveRecord::Migration
  def change
    add_column :branches, :slug, :string
    add_index  :branches, :slug
  end
end
