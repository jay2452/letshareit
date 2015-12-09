class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :topic
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
