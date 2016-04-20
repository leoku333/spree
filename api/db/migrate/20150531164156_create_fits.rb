class CreateFits < ActiveRecord::Migration
  def change
    create_table :fits do |t|
      t.integer :model_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
