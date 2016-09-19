class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :category
      t.text :problem

      t.timestamps null: false
    end
  end
end
