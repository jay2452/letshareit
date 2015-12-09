class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :topic
      t.references :user, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
