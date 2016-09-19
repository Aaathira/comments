class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :theme, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :solution
      t.string :status , default:'Waiting'

      t.timestamps null: false
    end
  end
end
