class AddManufIdToModels < ActiveRecord::Migration
  def change
    add_column :models, :manuf_id, :integer
  end
end
