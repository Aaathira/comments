class CreateUnlikes < ActiveRecord::Migration
  def change
    create_table :unlikes do |t|
      t.integer :nolike
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
