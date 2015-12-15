class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.string :branch

      t.timestamps null: false
    end
  end
end
